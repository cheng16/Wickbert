// @file PSClass.cpp
// @author Wen Su

#include "PSClass.h"

/// Takes a file input stream and remove comments
/// save the tokens into ostringstream
bool PSClass::tokenize(ifstream &in)
{
	string line;
	getline(in, line);
	// read input
	while(!in.eof())
	{
		// check for comments
		string::size_type pos=line.find("//");
		if (pos==string::npos)
			tokens << line << endl;
		else
			tokens << line.substr(0,pos) << endl;
		getline(in, line);
	}
	return true;
}

/// tokenize first, then parse with recursive descent
bool PSClass::parse(ifstream &in)
{
	// remove comments
	bool result=tokenize(in);
	// print tokens
	cout << "--------start of token--------" <<endl;
	cout << tokens.str() <<endl;
	cout << "---------end of token---------" <<endl;

	istringstream token(tokens.str());
	// parseClass
	token >> nextToken;
	result=result && parseClass(token);

	return result;
}

bool PSClass::generateHeader(ofstream &out)
{
	out << "// @file " << className <<".h"<<endl;
	out << "// @author Generated by PSL"<<endl;
	out <<endl;
	out << "#ifndef "<< className <<"_H"<<endl;
	out << "#define "<< className <<"_H"<<endl;
	out <<endl;
	out << "#include \"Particles.h\""<<endl;
	out << "#include \""<< baseClassName <<".h\""<<endl;
	out <<endl;
	out << "class "<< className <<": public " << baseClassName<<endl;
	out << "{" << endl;
	out << "public:" << endl;
	out << "	MAKE_PARTICLESTUFF_NAME();" << endl;
	out <<endl;
	if (!parameterName.empty())
	{
		out << "	// parameters" << endl;
		for(unsigned int i=0;i<parameterName.size();i++)
			out << "	double "<< parameterName[i] <<";"<<endl;
		out << endl;
		out << "	// parameter function calls" << endl;
		out << "	int qlen();" << endl;
		out << "	void getq(double *q);" << endl;
		out << "	void setq(double *q);" << endl;
		out << "	void qname(char **qn);" << endl;
		out <<endl;
	}
	if (!parameterNamePP.empty())
	{
		out << "	// perparticle parameters" << endl;
		for(unsigned int i=0;i<parameterNamePP.size();i++)
			out << "	std::vector<" << parameterPPType[i] << "> "<< parameterNamePP[i] <<";"<<endl;
		out << endl;
		out << "	// perparticle parameter function calls" << endl;
		out << "	int qlenpp();" << endl;
		out << "	void getqpp(double *q, int i);" << endl;
		out << "	void setqpp(double *q, int i);" << endl;
		out << "	void qnamepp(char **qn);" << endl;
		out <<endl;
	}
	out << "	// constuctor"<<endl;
	out << "	" <<className <<"(Particles *ps=NULL);"<<endl<<endl;
	if (!clear.empty())
		out << "	void clear();"<<endl<<endl;
	if (!particleAdded.empty())
		out << "	void particleAdded();"<<endl<<endl;
	if (!particleRemoved.empty())
		out << "	void particleRemoved(unsigned int i);"<<endl<<endl;
	if (!attachAttributeName.empty())
		out << "	void attachAttributeName();"<<endl<<endl;
	if (!applyForce.empty())
		out << "	void applyForce();"<<endl<<endl;
	if (!applyConstraint.empty())
		out << "	void applyConstraint();"<<endl<<endl;
	if (!integrate.empty())
		out << "	void integrate();"<<endl<<endl;
	if (!cleanup.empty())
		out << "	void cleanup();"<<endl<<endl;
	if (!draw.empty())
		out << "	void draw();"<<endl<<endl;
	if (!drawParticle.empty())
		out << "	void drawParticle(unsigned int i);"<<endl<<endl;
	if (!drawShape.empty())
		out << "	void drawShape(unsigned int i);"<<endl<<endl;
	out << "};" <<endl;
	out << "#endif" <<endl;
	return true;
}

bool PSClass::generateImplementation(ofstream &out)
{
	out << "// @file " << className <<".cpp"<<endl;
	out << "// @author Generated by PSL"<<endl;
	out <<endl;
	out << "#include \"" << className <<".h\"" <<endl;
	out << "REGISTER_PARTICLESTUFF(" << className<<",\"";
	if (classType==ATTRIBUTE)
		out << "Attribute:";
	else if (classType==BEHAVIOR)
		out << "Behavior:";
	else if (classType==SHADER)
		out << "Shader:";
	out << className << "\");"<<endl;

	// default constructor
	out << endl << "// default constructor" <<endl;
	out << className<<"::"<<className<<"(Particles *ps)"<<endl;
	out << "	: " << baseClassName << "(ps, std::string(\"" << className <<"\"))"<< endl;
	out << "{"<<endl;
	for(unsigned int i=0;i<parameterName.size();i++)
		out << "	" << parameterName[i] << " = " << parameterDefaultValue[i] <<";"<<endl;
	for(unsigned int i=0;i<attachAttributeName.size();i++)
		out << "	" << attachAttributeName[i] << " = NULL;" <<endl;
	out << "}"<<endl;

	// attach attribute
	if (!attachAttributeName.empty())
	{
		out << endl;
		out << "void "<<className<<"::attachAttributes()"<<endl;
		out << "{"<<endl;
		out << "	"<< baseClassName <<"::attachAttributes();"<<endl;
		for(unsigned int i=0;i<attachAttributeName.size();i++)
			out << "	attachAttribute(" << attachAttributeName[i] << ",std::string(\"" << attachAttributeType[i] <<"\"));"<<endl;
		out << "}"<<endl;
	}

	// parameters
	if (!parameterName.empty())
	{
		out << endl;
		out << "int "<<className<<"::qlen()"<<endl;
		out <<"{"<<endl;
		out <<"	return "<<parameterName.size() << ";"<<endl;
		out <<"}"<<endl << endl;

		out << "void "<<className<<"::getq(double *q)"<<endl;
		out <<"{"<<endl;
		for(unsigned int i=0;i<parameterName.size();i++)
			out <<"	q["<<i<<"] = "<<parameterName[i] << ";"<<endl;
		out <<"}"<<endl << endl;

		out << "void "<<className<<"::setq(double *q)"<<endl;
		out <<"{"<<endl;
		for(unsigned int i=0;i<parameterName.size();i++)
			out << "	"<<parameterName[i] << " = q["<<i<<"];"<<endl;
		out <<"}"<<endl << endl;

		out << "void "<<className<<"::qname(char **qn)"<<endl;
		out <<"{"<<endl;
		for(unsigned int i=0;i<parameterName.size();i++)
			out <<"	qn["<<i<<"] = \""<<parameterName[i] << "\";"<<endl;
		out <<"}"<<endl;
	}

	// parameters
	if (!parameterNamePP.empty())
	{
		out << endl;
		out << "int "<<className<<"::qlenpp()"<<endl;
		out <<"{"<<endl;
		out <<"	return "<<parameterNamePP.size() << ";"<<endl;
		out <<"}"<<endl << endl;

		out << "void "<<className<<"::getqpp(double *q, int i)"<<endl;
		out <<"{"<<endl;
		for(unsigned int i=0;i<parameterNamePP.size();i++)
			out <<"	q["<<i<<"] = "<<parameterNamePP[i] << "["<<i << "];"<<endl;
		out <<"}"<<endl << endl;

		out << "void "<<className<<"::setqpp(double *q, int i)"<<endl;
		out <<"{"<<endl;
		for(unsigned int i=0;i<parameterNamePP.size();i++)
			out << "	"<<parameterNamePP[i] << "["<<i << "] = q["<<i<<"];"<<endl;
		out <<"}"<<endl << endl;

		out << "void "<<className<<"::qnamepp(char **qn)"<<endl;
		out <<"{"<<endl;
		for(unsigned int i=0;i<parameterNamePP.size();i++)
			out <<"	qn["<<i<<"] = \""<<parameterNamePP[i] << "\";"<<endl;
		out <<"}"<<endl;
	}

	// behavior functions
	if (!applyForce.empty())
	{
		out << endl<< "void " << className<<"::applyForce()"<<endl;
		out <<"{"<<endl <<applyForce<<endl <<"}"<<endl;
	}
	if (!applyConstraint.empty())
	{
		out << endl<< "void " << className<<"::applyConstraint()"<<endl;
		out <<"{"<<endl<<applyConstraint<<endl<<"}"<<endl;
	}
	if (!integrate.empty())
	{
		out << endl<< "void " << className<<"::integrate()"<<endl;
		out <<"{"<<endl<<integrate<<endl<<"}"<<endl;
	}
	if (!cleanup.empty())
	{
		out << endl<< "void " << className<<"::cleanup()"<<endl;
		out <<"{"<<endl<<cleanup<<endl<<"}"<<endl;
	}
	if (!draw.empty())
	{
		out << endl<< "void " << className<<"::draw()"<<endl;
		out <<"{"<<endl<<draw<<endl<<"}"<<endl;
	}
	if (!drawParticle.empty())
	{
		out << endl<< "void " << className<<"::drawParticle(unsigned int i)"<<endl;
		out <<"{"<<endl<<drawParticle<<endl<<"}"<<endl;
	}
	if (!drawShape.empty())
	{
		out << endl<< "void " << className<<"::drawShape(unsigned int i)"<<endl;
		out <<"{"<<endl<<drawShape<<endl<<"}"<<endl;
	}

	return true;
}

// ParticleAttribute, ParticleBehavior, ParticleShader name
bool PSClass::parseClass(istringstream &token)
{
	bool result=true;
	// class type
	if (!nextToken.compare("Attribute"))
		classType=ATTRIBUTE;
	else if (!nextToken.compare("Behavior"))
		classType=BEHAVIOR;
	else if (!nextToken.compare("Shader"))
		classType=SHADER;
	else
	{
		cout << "Translation stopped because no such class type: " << nextToken <<endl;
		result=false;
	}
	baseClassName="Particle"+nextToken;
	// name
	token >> className;
	// open {
	token >> nextToken;
	if (nextToken.compare("{"))
		result=false;
	// can be parameters or functions
	token >> nextToken;
	// parse rest
	while(true)
	{
		if (!nextToken.compare("Parameters"))
		{
			result = result && parseParameters(token);
			if (!result) break;
		}
		else if (!nextToken.compare("attachAttributes"))
		{
			result = result && parseAttachAttributes(token);
			if (!result) break;
		}
		else if (!nextToken.compare("Behavior"))
		{
			result = result && parseBehavior(token);
			if (!result) break;
		}
		else if (!nextToken.compare("Shader"))
		{
			result = result && parseShader(token);
			if (!result) break;
		}
		else if (!nextToken.compare("}"))
			break;
		else
		{
			cout << "Translation stopped because cannot parse token: " << nextToken<< ". Expecting end of class." <<endl;
			break;
		}
	}
	// close }
	if (nextToken.compare("}"))
		result=false;

	return result;
}

// Parameters or Parameters PerParticle
bool PSClass::parseParameters(istringstream &token)
{
	bool result=true;
	token >> nextToken;
	if (!nextToken.compare("PerParticle"))
	{
		// PerParticle
		token >> nextToken;
		if (nextToken.compare("{"))
			result=false;
		token >> nextToken;
		while (nextToken.compare("}"))
			parseParametersPP(token);
	}
	else if (!nextToken.compare("{"))
	{
		token >> nextToken;
		// not PerParticle
		while (nextToken.compare("}"))
			parseParametersNonPP(token);
	}
	else
	{
		cout << "Translation stopped in parseParameters because cannot parse token: " << nextToken <<endl;
		result=false;
	}
	// close }
	if (nextToken.compare("}"))
		result=false;

	token >> nextToken;
	return result;
}

bool PSClass::parseParametersNonPP(istringstream &token)
{
	parameterName.push_back(nextToken);
	token >> nextToken;
	if (nextToken.compare("="))
	{
		cout << "Translation stopped in parseParametersNonPP because cannot parse token: "<< nextToken << ". Expecting =." <<endl;
		return false;
	}
	token >> nextToken;
	parameterDefaultValue.push_back(nextToken);
	token >> nextToken;
	return true;
}

bool PSClass::parseParametersPP(istringstream &token)
{
	parameterPPType.push_back(nextToken);
	token >> nextToken;
	parameterNamePP.push_back(nextToken);
	token >> nextToken;
	return true;
}

bool PSClass::parseAttachAttributes(istringstream &token)
{
	// open {
	token >> nextToken;
	token >> nextToken;
	while(nextToken.compare("}"))
	{
		attachAttributeName.push_back(nextToken);
		// equal sign =
		token >> nextToken;
		if (nextToken.compare("="))
		{
			cout << "Translation stopped in parseAttachAttributes because cannot parse token: "<< nextToken << ". Expecting =." <<endl;
			return false;
		}
		token >> nextToken;
		attachAttributeType.push_back(nextToken);
		token >> nextToken;
	}
	token >> nextToken;
	return true;
}

// applyForce, applyConstraint, integrate, cleanup
bool PSClass::parseBehavior(istringstream &token)
{
	string *target;
	token >>nextToken;
	if (!nextToken.compare("applyForce"))
		target=&applyForce;
	else if (!nextToken.compare("applyConstraint"))
		target=&applyConstraint;
	else if (!nextToken.compare("integrate"))
		target=&integrate;
	else if (!nextToken.compare("cleanup"))
		target=&cleanup;
	else
	{
		cout << "Translation stopped in parseBehavior because cannot parse token: "<< nextToken << ". Expecting Behavior functions names." <<endl;
		return false;
	}
	// open {
	token >> nextToken;
	string line;
	getline(token, line);
	while(string::npos==line.find("}"))
	{
		target->append(line);
		getline(token, line);
	}

	token >> nextToken;
	return true;
}

// attachAttributes, draw, drawShape, drawParticle
bool PSClass::parseShader(istringstream &token)
{
	string *target;
	token >>nextToken;
	if (!nextToken.compare("draw"))
		target=&draw;
	else if (!nextToken.compare("drawParticle"))
		target=&drawParticle;
	else if (!nextToken.compare("drawShape"))
		target=&drawShape;
	else
	{
		cout << "Translation stopped in parseShader because cannot parse token: "<< nextToken << ". Expecting Shader functions names." <<endl;
		return false;
	}
	// open {
	token >> nextToken;
	string line;
	getline(token, line);
	while(string::npos==line.find("}"))
	{
		target->append(line);
		getline(token, line);
	}

	token >> nextToken;
	return true;
}

