//  
// 
//
#include "GlutModeler.h"

#ifndef _WIN32
#undef check
#endif

#include <time.h>
#include <iostream>

#ifdef WB_USE_CGAL
#include "SVGshader.h"
#endif


int nFPS = 60;
int main_window;
float fRotateAngle = 0.f;
float xrot = 0.0f;
float yrot = 0.0f;
float zoom = -5.0f;

Particles *selected_p;
int selected_particle;
ParticleSystems *particlesystems;
Surfaces *surfaces;

static int rot_dragging = 0;
static int particle_dragging = 0;
static int zoom_dragging = 0;
static float last_x, last_y;

using namespace std;

void LoadWB(string filename)
{
	particlesystems = new ParticleSystems();
	surfaces = new Surfaces();
	ifstream in (filename,ifstream::in);
	string token;
	if (!(in >> token) || token != "Wickbert-0.3")
	{
		printf("Wrong version.\n Expected \"Wickbert-0.3\" but read %s.",token);
	}
	else
	{
		while (in >> token)
		{
			if (token == "particlesystem")
			{
				ParticleSystem *newps = new ParticleSystem(particlesystems);
				/* need to read in name of particle system */
				char c;
				if (in >> c && c == '"')
				{
					in >> std::noskipws;
					token = "";
					while (in >> c && c != '"')
						token += c;
					newps->name = token;
					in >> std::skipws;
				}
				if (in >> c && c != '{')
				{
					std::cerr << "Expected '{' after particle system name";
					break;
				}
				if (in >> newps)
				{
					particlesystems->push_back(newps);
				}
			}
			else if (token == "surface")
			{
				Surfaces newsurfs;
				in >> &newsurfs;		/* reads just one */
			}
			else if( token == "mesh" )
			{
				// add code here to load non-implicit surfaces
				SurfaceMesh *mesh = new SurfaceMesh;
				if ( ! mesh->readStream(in) )
				{
					// couldn't find mesh?
				}

				surfaces->insert(surfaces->end(), mesh);
			}
			else
			{
				printf("Read \"%s\" when expecting surface or particlesystem.",token);
			}
		}
		particlesystems->setSurfaces(surfaces);
		particlesystems->attachAttributes();
		surfaces->attach();
	}
}

void OnSave()
{
	//ParticleSystems *newps = new ParticleSystems();
	//Surfaces *news = new Surfaces();
	//Implicit *imp = dynamic_cast<Implicit *>((*surfaces)[0]);

	/*wxFileDialog *filedialog = new wxFileDialog(this, "Save to a File", "", "",
		"Particles + Implicits (*.wb)|*.wb|"
		"Particle Systems (*.par)|*.par|"
		"Implicit Surfaces (*.imp)|*.imp|"
		"Meshed Surfaces (*.obj)|*.obj|"
		"Other files (*.*)|*.*", wxSAVE);

	if (filedialog->ShowModal() == wxID_CANCEL)
		return;

	wxString filename = filedialog->GetPath();*/
	string filename;
	cout << "Enter Filename: ";
	cin >> filename;
	int choice;
	cout << "Enter Choice: ";
	cin >> choice;
	if(choice == 0)//.wb
	{
		std::ofstream out(filename.append(".wb").c_str());
		if (out)
		{
			out << "Wickbert-0.3" << std::endl;
			for (unsigned int i = 0; i < particlesystems->size(); i++) 
			{
				out << "particlesystem " << particlesystems->at(i);
			}
			for (unsigned int i = 0; i < surfaces->size(); i++)
			{
				SurfaceMesh *sm = dynamic_cast<SurfaceMesh *>(surfaces->at(i));
				if ( sm )
				{
					out << "mesh ";
					sm->writeStream(out);
				}
				else
					out << "surface " << surfaces->at(i); // run some logic here to determine if this is a surface or an implicit
				//out << "implicit " << surfaces->at(i);
			}
			out.close();
		}
	}
	else if(choice == 1)//.par
	{
		ofstream out(filename.append(".par").c_str());
		if (out)
		{
			out << "v0.3" << endl;
			/* save particle system */
			out << *particlesystems;
			out.close();
		}
	}
	else if(choice == 2)//.imp
	{
		std::ofstream out(filename.append(".imp").c_str());
		if (out)
		{
			/* save surfaces */
			out << surfaces;
			out.close();
		}
	}
	else if(choice == 3)//.obj
	{
			/*if (!impwin->selected)
			{
				//no surface mesh is selected
				return;
			}
			SurfaceMesh* mesh = dynamic_cast<SurfaceMesh *>(impwin->selected);
			if (!mesh) {
				//selected surface is not a mesh
				return;
			}
			/* save obj mesh */
			//mesh->saveAs(filename.append(".obj").c_str());

			/* If just points, need to correlate texcoords with vertices */
			/*if (mesh->n_faces() == 0) {
				FILE *out = fopen(filename.append(".obj").c_str(),"a");
				if (out) {
					for (unsigned int i = 1; i <= mesh->n_vertices(); i++) {
						fprintf(out,"f %d/%d\n",i,i);
					}
					fclose(out);
				}
			}*/
	}
}

void SetupView(int picking, int x, int y)
{
	GLint viewport[4];
	glGetIntegerv(GL_VIEWPORT, viewport);

	int w,h;
    //GetClientSize(&w, &h);
	w = 500;
	h = 500;

	/*if (!GetContext()) return;
	SetCurrent();*/
	float aspect = (float)w/h;
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	if (picking) gluPickMatrix(x,viewport[3] - y,5.0,5.0,viewport);
	glFrustum(-0.5, 0.5, -0.5/aspect, 0.5/aspect, 0.5, 10.0 );
	glMatrixMode(GL_MODELVIEW);
	glLoadIdentity();
	glTranslatef( 0.0, 0.0, zoom);
	glRotatef(yrot,0.0,1.0,0.0);
	glRotatef(xrot,1.0,0.0,0.0);
}

void init(void)
{
	//SetCurrent();
	glClearColor(1.0,1.0,1.0,1.0);	
	glEnable(GL_DEPTH_TEST);
	static float ambient[] = {0.1f, 0.1f, 0.1f, 1.0f};
	static float diffuse[] = {1.0f, 1.0f, 1.0f, 1.0f};
	static float position0[] = {10.0f, 20.0f, 20.0f, 0.0f};
	static float position1[] = {0.0f, 0.0f, -20.0f, 0.0f};
	static float front_mat_shininess[] = {60.0f};
	static float front_mat_specular[] = {0.2f, 0.2f, 0.2f, 1.0f};
	static float front_mat_diffuse[] = {0.5f, 0.28f, 0.38f, 1.0f};	
	static float lmodel_ambient[] = {1.0f, 1.0f, 1.0f, 1.0f};
	static float lmodel_twoside[] = {GL_TRUE};	
	
	  /* speedups */
	glEnable(GL_DITHER);
	glShadeModel(GL_SMOOTH);
	glHint(GL_PERSPECTIVE_CORRECTION_HINT, GL_FASTEST);
	glHint(GL_POLYGON_SMOOTH_HINT, GL_FASTEST);

	glLightfv(GL_LIGHT0, GL_AMBIENT, ambient);
	glLightfv(GL_LIGHT0, GL_DIFFUSE, diffuse);
	glLightfv(GL_LIGHT0, GL_POSITION, position0);
	glEnable(GL_LIGHT0);
	
	glLightfv(GL_LIGHT1, GL_AMBIENT, ambient);
	glLightfv(GL_LIGHT1, GL_DIFFUSE, diffuse);
	glLightfv(GL_LIGHT1, GL_POSITION, position1);
	glEnable(GL_LIGHT1);
	
	glLightModelfv(GL_LIGHT_MODEL_AMBIENT, lmodel_ambient);
	glLightModelfv(GL_LIGHT_MODEL_TWO_SIDE, lmodel_twoside);
	glEnable(GL_LIGHTING);
	
	glMaterialfv(GL_FRONT_AND_BACK, GL_SHININESS, front_mat_shininess);
	glMaterialfv(GL_FRONT_AND_BACK, GL_SPECULAR, front_mat_specular);
	glMaterialfv(GL_FRONT_AND_BACK, GL_DIFFUSE, front_mat_diffuse);

	glEnable(GL_LINE_SMOOTH);	// antialias lines
	SetupView(false, 0, 0);
}

void display(void)
{
	ParticleSystems *ps = particlesystems;

	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	glInitNames();
	for (unsigned int j = 0; j < ps->size(); j++)
	{
		glPushName(j);
		for(unsigned int i = 0; i < (*ps)[j]->particles.size(); i++)
		{
			glPushName(i);
			(*ps)[j]->particles[i]->draw();
			glPopName();
		}
		glPopName();
	}
	ps->fullUpdate();
	glFlush();
	glutSwapBuffers();
}

bool pick(int x, int y)
{
	GLuint selbuf[1024];
	glSelectBuffer(1024, selbuf);

	SetupView(TRUE,x,y);

	glRenderMode(GL_SELECT);
	display();

	SetupView(FALSE,0,0);
	GLuint hits = glRenderMode(GL_RENDER);
	if (hits > 1000000) hits = 0;
	/* selbuf now contains a number of records (= hits) of the form:
	 * ... 3 znear zfar ps-index particles-index particle-index ...
	 *
	 * need to find the nearest and select it
	 */

	GLuint closest = 0;
	int picked_ps = -1;
	int picked_p = -1;
	int picked_particle = -1;
	for (unsigned int i = 0; i < hits; i++) {
		if (selbuf[6*i + 1] < closest || i == 0) {
			closest = selbuf[6*i + 1];
			picked_ps = selbuf[6*i + 3];
			picked_p = selbuf[6*i + 4];
			picked_particle = selbuf[6*i + 5];
		}
	}

	selected_p = 0;
	selected_particle = -1;

	/* this keeps an empty pick() from resetting the current selection */
	if (!hits) return false;

	ParticleSystems *ps = particlesystems;// = &(wxGetApp().particlesystems);
	for (unsigned int j = 0; j < ps->size(); j++)
	{
		for (unsigned int i = 0; i < (*ps)[j]->particles.size(); i++)
		{
			if (j == picked_ps && i == picked_p)
			{
				(*ps)[j]->particles[i]->selectedParticle = picked_particle;
				selected_p = (*ps)[j]->particles[i];
				selected_particle = picked_particle;
			}
			else
			{
				(*ps)[j]->particles[i]->selectedParticle = -1;
			}
		}
	}
	return true;
}

void reshape (int w, int h)
{
	// reset viewport ( drawing screen ) size
	glViewport(0, 0, w, h);
	/*float fAspect = ((float)w)/h; 
	// reset OpenGL projection matrix
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	gluPerspective(70.f,fAspect,0.001f,30.f); */
	SetupView(false,0,0);
}



void keyboard(unsigned char key, int x, int y)
{
	// put your keyboard control here
	if (key == 27) 
	{
		// ESC hit, so quit
		printf("demonstration finished.\n");
		exit(0);
	}
	if (key == '=')
	{
		OnSave();
	}
}

void mouse(int button, int state, int x, int y)
{
	
	if(button == GLUT_MIDDLE_BUTTON && state == GLUT_DOWN)
	{
		zoom_dragging = 1;
	}
	else if(button == GLUT_LEFT_BUTTON && state == GLUT_DOWN)
	{
		if (pick(x,y))
			particle_dragging = 1;
		else
			rot_dragging = 1;
	}
	else if (button == GLUT_LEFT_BUTTON && state == GLUT_UP && rot_dragging)
	{
		// clicked on a non-particle, clear selection
		rot_dragging = 0;
		selected_p = 0;
		selected_particle = -1;

		ParticleSystems *ps = particlesystems;
		for (unsigned int j = 0; j < ps->size(); j++)
		{
			for (unsigned int i = 0; i < (*ps)[j]->particles.size(); i++)
			{
				(*ps)[j]->particles[i]->selectedParticle = -1;
			}
		}
	}
	else
	{
		rot_dragging = 0;
		particle_dragging = 0;
		zoom_dragging = 0;
	}

	int e = 0;
	if (button == GLUT_LEFT_BUTTON && state == GLUT_DOWN)
	{
		e = WB_CLICK;
	} /*else if (event.LeftDClick()) {
		e = WB_DOUBLECLICK;
	}*/ else if (button == GLUT_LEFT_BUTTON && state == GLUT_UP)
	{
		e = WB_DRAG;
	} else if (button == GLUT_RIGHT_BUTTON && state == GLUT_DOWN)
	{
		e = WB_RIGHTCLICK;
	}
	/*if (event.ShiftDown()) e |= WB_SHIFT;
	if (event.ControlDown()) e |= WB_CTRL;
	if (event.AltDown()) e |= WB_ALT;*/

	ParticleSystems *ps = particlesystems;

	for (unsigned int j = 0; j < ps->size(); j++){
		//pass the Euler angles and the zoom factor
		(*ps)[j]->setEulerAnglesAndZoom(xrot,yrot,zoom);
		for(unsigned int i = 0; i < (*ps)[j]->particles.size(); i++)
			(*ps)[j]->particles[i]->event(e);
	}
	last_x = x;
	last_y = y;
}

void mouseMotion(int x, int y) 
{
	if (zoom_dragging)
	{
		zoom += (y - last_y)/100;
		SetupView(FALSE,0,0);
		glutPostRedisplay();
	}
	else if (rot_dragging)
	{
		xrot += (y - last_y)*1.0;
		yrot += (x - last_x)*1.0;
		SetupView(FALSE,0,0);
		glutPostRedisplay();
	}
	else if (particle_dragging)
	{
		if (!selected_p || selected_particle == -1)
		{
			particle_dragging = 0;
			return;
		}

		float dx = x - last_x;
		float dy = last_y - y;

		GLdouble modelview[16];
		GLdouble projection[16];
		GLint viewport[4];
		glGetDoublev(GL_MODELVIEW_MATRIX,modelview);
		glGetDoublev(GL_PROJECTION_MATRIX,projection);
		glGetIntegerv(GL_VIEWPORT,viewport);

		//ParticlePosition *posattr = selected_p->getAttribute<ParticlePosition>(std::string("ParticlePosition"));
		ParticlePosition *posattr;
		if (selected_p->findAttribute(posattr))
		{
			gmVector3 pos = posattr->getPosition(selected_particle);

			GLdouble objx = pos[0], objy = pos[1], objz = pos[2];
			GLdouble winx,winy,winz;

			gluProject(objx,objy,objz,
						modelview,projection,viewport,
						&winx,&winy,&winz);

			winx += dx;
			winy += dy;

			gluUnProject(winx,winy,winz,
						modelview,projection,viewport,
						&objx,&objy,&objz);

			pos.assign(objx,objy,objz);
			posattr->setPosition(selected_particle, pos);
			//[tk 6.01.05] added this code to try to update the particle positions when I move a particle
			//[tk 6.01.05] seems to have done the trick - now particles moved with the mouse tell their ParticlePosition attribute that they have been updated
			// This is useful for RBF control particles.  I don't know why the regular Witkin-Heckbert control particles didn't require this kind of feedback.  Perhaps they are
			// updated like this at every frame regardless of movement.
			// It might be better to implement this the same way as the regular Witkin-Heckbert control particles - to update RBF centers the same way, I will have to find out how they are actually
			// implemented.
			posattr->changed = true;
		}
	}
	//update to new position
	last_x = x;
	last_y = y;
}

void timer(int v)
{
	fRotateAngle += 1.f; // change rotation angles
	glutPostRedisplay(); // trigger display function by sending redraw into message queue
	glutTimerFunc(1000/nFPS,timer,v); // restart timer again
}

int main(int argc, char* argv[])
{
	glutInit(&argc, (char**)argv);
	// set up for double-buffering & RGB color buffer & depth test
	glutInitDisplayMode (GLUT_DOUBLE | GLUT_RGB | GLUT_DEPTH); 
	glutInitWindowSize (500, 500); 
	glutInitWindowPosition (100, 100);
	main_window = glutCreateWindow ((const char*)"GlutModeler");

	init(); // setting up user data & OpenGL environment
	//loads a file that is dragged and drop onto the .exe
	if (argc == 2)
	{
		string filename = argv[1];
		if(filename.substr(filename.find_last_of('.')+1) == "wb")
			LoadWB(filename);
		else
			LoadWB("default.wb");
	}
	else
		LoadWB("default.wb");

	// set up the call-back functions 
	glutDisplayFunc(display);  // called when drawing 
	glutReshapeFunc(reshape);  // called when change window size
	glutKeyboardFunc(keyboard); // called when received keyboard interaction
	glutMouseFunc(mouse);	    // called when received mouse interaction
	glutMotionFunc(mouseMotion);
	glutTimerFunc(100,timer,nFPS); // a periodic timer. Usually used for updating animation

	glutMainLoop(); // start the main message-callback loop

	return 0;
}
