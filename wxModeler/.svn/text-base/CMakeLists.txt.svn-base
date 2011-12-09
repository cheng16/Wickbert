ADD_EXECUTABLE(wxModeler WIN32 MACOSX_BUNDLE 
  #${GPS_RC_FILE}
	wxModeler.cpp
	wxModeler.h
  	DisplayWindow.cpp
	DisplayWindow.h
	ParticleTree.cpp
	ParticleTree.h
	SurfaceTree.cpp
	SurfaceTree.h
	LogFrame.cpp
	LogFrame.h
	ClipartFrame.cpp
	ClipartFrame.h
	dcsvg.cpp
	
	dcsvg.h
	
	SVGshader.cpp
	
	SVGshader.h
)

INCLUDE_DIRECTORIES(
	${GPS_SOURCE_DIR} 
	${GPS_SOURCE_DIR}/Surface
	
	${GPS_SOURCE_DIR}/Particles
	
	${GPS_SOURCE_DIR}/Particles/Attributes
	)

IF(APPLE)
    TARGET_LINK_LIBRARIES(wxModeler 
	
    Surface 
	Particles 
	gm 
	ism
	wx_mac_xrc-2.6
	wx_mac_qa-2.6 
	wx_mac_html-2.6 
	wx_mac_adv-2.6 
	wx_mac_core-2.6 
	wx_base_carbon_xml-2.6 
	wx_base_carbon_net-2.6 
	wx_base_carbon-2.6
	wxexpat-2.6
	wxtiff-2.6
	wxjpeg-2.6
	wxpng-2.6 
	wx_mac_gl-2.6
	z
	pthread
	iconv
	OpenMesh_Core
	gsl
    )
    SET(CMAKE_EXE_LINKER_FLAGS  "-framework,IOKit,-framework,Carbon,-framework,Cocoa,-framework,System,-framework,OpenGL,-framework,AGL")
	SET(wxModeler_PATH ${EXECUTABLE_OUTPUT_PATH})
	IF(NOT wxModeler_PATH)
  		SET(wxModeler_PATH ${CMAKE_CURRENT_BINARY_DIR})
	ENDIF(NOT wxModeler_PATH)
	 FIND_PROGRAM(VTK_APPLE_RESOURCE Rez /Developer/Tools)
  	IF(VTK_APPLE_RESOURCE)
    	ADD_CUSTOM_COMMAND(SOURCE wxModeler
                       COMMAND ${VTK_APPLE_RESOURCE}
                       ARGS Carbon.r -o 
                       ${wxModeler_PATH}/wxModeler
                       TARGET wxModeler)
  	ENDIF(VTK_APPLE_RESOURCE)

ENDIF(APPLE)

#for UNIX, this should be changed according to the specific system
IF(UNIX AND NOT APPLE)
   SET_TARGET_PROPERTIES(wxModeler              
     PROPERTIES LINK_FLAGS 
     "-L/usr/X11R6/lib64")
    TARGET_LINK_LIBRARIES(wxModeler
	Surface 
	Particles 
	gm 
	ism 
     	blas
	gslcblas
        gsl
        GL
        GLU
	wx_gtk2_xrc-2.6
	wx_gtk2_qa-2.6 
	wx_gtk2_html-2.6 
	wx_gtk2_adv-2.6 
	wx_gtk2_core-2.6 
	wx_base_xml-2.6 
	wx_base_net-2.6 
	wx_base-2.6
	wx_gtk2_gl-2.6
	wx_gtk2_svg-2.6
	z
	gtk-x11-2.0
	gdk-x11-2.0 
	atk-1.0 
	gdk_pixbuf-2.0 
	pangoxft-1.0 
	pangox-1.0 
	pango-1.0  
	gobject-2.0		
	gmodule-2.0 
	gthread-2.0	
	glib-2.0		
	Xinerama		
	Xxf86vm 
	png	
	jpeg 
	tiff 
	expat 
	dl 
	m
	pthread
	OpenMesh_Core
    )
ENDIF(UNIX AND NOT APPLE)


IF(WIN32)
TARGET_LINK_LIBRARIES(wxModeler
    gm
    ism
    Surface
    Particles    
    optimized OpenMeshCore
    debug OpenMeshCored
    optimized libgsl
    debug libgsld
)

TARGET_LINK_LIBRARIES(wxModeler ${WXWIDGETS_LIBRARIES})
FOREACH(LOOPLIB ${WXWIDGETS_DEBUG_LIBRARIES})
    TARGET_LINK_LIBRARIES(wxModeler debug ${LOOPLIB})
ENDFOREACH(LOOPLIB ${WXWIDGETS_DEBUG_LIBRARIES})
FOREACH(LOOPLIB ${WXWIDGETS_RELEASE_LIBRARIES})
    TARGET_LINK_LIBRARIES(wxModeler optimized ${LOOPLIB})
ENDFOREACH(LOOPLIB ${WXWIDGETS_RELEASE_LIBRARIES})
TARGET_LINK_LIBRARIES(${PROJECT_NAME} ${PROJECT_LIBRARIES})

IF(WB_USE_CG)
TARGET_LINK_LIBRARIES(wxModeler
    cg
    cgGL
    glew32
)
ENDIF(WB_USE_CG)

#SET(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /NODEFAULTLIB:msvcrt.lib ")
   
ENDIF(WIN32)

IF(WB_USE_VTK)  
TARGET_LINK_LIBRARIES(wxModeler 
	vtkIO
  	vtkHybrid
  	vtkCommon
  	vtkGraphics
  	vtkRendering
 )
ENDIF(WB_USE_VTK)

IF(WB_USE_SFL)
    TARGET_LINK_LIBRARIES(wxModeler
        sfl
    )
ENDIF(WB_USE_SFL)

IF(WB_USE_ITK)
	TARGET_LINK_LIBRARIES(wxModeler
	    ITKNumerics 
	    ITKCommon 
	    ITKBasicFilters 
	    ITKStatistics 
	    ITKIO
	)
ENDIF(WB_USE_ITK)

IF(WB_USE_CGAL)
TARGET_LINK_LIBRARIES(wxModeler
    CGAL
    gmp
)
ENDIF(WB_USE_CGAL)
