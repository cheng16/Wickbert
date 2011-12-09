<?xml version="1.0" encoding = "Windows-1252"?>
<VisualStudioProject
	ProjectType="Visual C++"
	Version="7.10"
	Name="wxModeler"
	SccProjectName=""
	SccLocalPath=""
	Keyword="Win32Proj">
	<Platforms>
		<Platform
			Name="Win32"/>
	</Platforms>
	<Configurations>
		<Configuration
			Name="Debug|Win32"
			OutputDirectory="Debug"
			IntermediateDirectory=".\Debug"
			ConfigurationType="1"
			UseOfMFC="0"
			ATLMinimizesCRunTimeLibraryUsage="FALSE"
			CharacterSet="2">
			<Tool
				Name="VCCLCompilerTool"
				AdditionalOptions="   /Zm1000       -DCMAKE_INTDIR=\&quot;Debug\&quot;"
				AdditionalIncludeDirectories="&quot;C:\Program Files\wxWidgets-2.6.3\include&quot;;&quot;C:\Program Files\wxWidgets-2.6.3\include\..\contrib\include&quot;;&quot;C:\Program Files\wxWidgets-2.6.3\lib\vc_lib\msw&quot;;&quot;C:\Program Files\CGAL-3.2.1\include&quot;;&quot;C:\Program Files\CGAL-3.2.1\include\CGAL\config\msvc7&quot;;&quot;C:\Program Files\CGAL-3.2.1\auxiliary\gmp\include&quot;;ism;libgm;Particles;Surface;C:\Boost\include\boost-1_33;&quot;C:\Program Files&quot;;c:\hart\wickbert\gsl;\pi;C:\hart\Wickbert;C:\hart\Wickbert\Surface;C:\hart\Wickbert\Particles;C:\hart\Wickbert\Particles\Attributes;"
				BasicRuntimeChecks="1"
				DebugInformationFormat="3"
				ExceptionHandling="TRUE"
				InlineFunctionExpansion="0"
				Optimization="0"
				RuntimeLibrary="3"
				RuntimeTypeInfo="TRUE"
				WarningLevel="3"
				PreprocessorDefinitions="WIN32,_DEBUG,_WINDOWS,WINDOWS,WIN32,__WXMSW__,_USE_MATH_DEFINES,NOMINMAX,_WIN32,_HAS_ITERATOR_DEBUGGING=0,_SECURE_SCL=0,_CRT_SECURE_NO_DEPRECATE,WB_USE_CGAL,"
				AssemblerListingLocation="Debug"
				ObjectFile="Debug\"
				SuppressStartupBanner="FALSE"
				ProgramDatabaseFileName="C:/hart/Wickbert/bin/$(OutDir)/wxModeler.pdb"
/>
			<Tool
				Name="VCCustomBuildTool"/>
			<Tool
				Name="VCResourceCompilerTool"
				AdditionalIncludeDirectories="&quot;C:\Program Files\wxWidgets-2.6.3\include&quot;;&quot;C:\Program Files\wxWidgets-2.6.3\include\..\contrib\include&quot;;&quot;C:\Program Files\wxWidgets-2.6.3\lib\vc_lib\msw&quot;;&quot;C:\Program Files\CGAL-3.2.1\include&quot;;&quot;C:\Program Files\CGAL-3.2.1\include\CGAL\config\msvc7&quot;;&quot;C:\Program Files\CGAL-3.2.1\auxiliary\gmp\include&quot;;ism;libgm;Particles;Surface;C:\Boost\include\boost-1_33;&quot;C:\Program Files&quot;;c:\hart\wickbert\gsl;\pi;C:\hart\Wickbert;C:\hart\Wickbert\Surface;C:\hart\Wickbert\Particles;C:\hart\Wickbert\Particles\Attributes;"
				PreprocessorDefinitions="WIN32,_DEBUG,_WINDOWS,WINDOWS,WIN32,__WXMSW__,_USE_MATH_DEFINES,NOMINMAX,_WIN32,_HAS_ITERATOR_DEBUGGING=0,_SECURE_SCL=0,_CRT_SECURE_NO_DEPRECATE,WB_USE_CGAL," />
			<Tool
				Name="VCMIDLTool"/>
			<Tool
				Name="VCPreBuildEventTool"/>
			<Tool
				Name="VCPreLinkEventTool"/>
			<Tool
				Name="VCPostBuildEventTool"/>
			<Tool
				Name="VCLinkerTool"
				AdditionalOptions="/MACHINE:I386 /STACK:10000000 /machine:I386 /INCREMENTAL:YES"
				AdditionalDependencies="kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib  kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib gm.lib ism.lib Surface.lib Particles.lib OpenMeshCored.lib libgsld.lib comctl32.lib wsock32.lib rpcrt4.lib wxbase26d.lib wxbase26d_net.lib wxbase26d_xml.lib wxmsw26d_adv.lib wxmsw26d_core.lib wxmsw26d_html.lib wxmsw26d_xrc.lib wxmsw26d_gl.lib wxregexd.lib wxexpatd.lib wxpngd.lib wxtiffd.lib wxjpegd.lib wxzlibd.lib CGAL.lib gmp.lib "
				OutputFile="C:\hart\Wickbert\bin\Debug\wxModeler.exe"
				LinkIncremental="1"
				SuppressStartupBanner="FALSE"
				AdditionalLibraryDirectories="C:\hart\Wickbert\bin\$(INTDIR),C:\hart\Wickbert\bin\,&quot;C:\Program Files\wxWidgets-2.6.3\lib\vc_lib\$(INTDIR)&quot;,&quot;C:\Program Files\wxWidgets-2.6.3\lib\vc_lib\&quot;,&quot;C:\Program Files\OpenMesh\Win\msvc7\Core\Release\$(INTDIR)&quot;,&quot;C:\Program Files\OpenMesh\Win\msvc7\Core\Release\&quot;,&quot;C:\Program Files\CGAL-3.2.1\lib\msvc7\$(INTDIR)&quot;,&quot;C:\Program Files\CGAL-3.2.1\lib\msvc7\&quot;,c:\hart\wickbert\lib-release\$(INTDIR),c:\hart\wickbert\lib-release\,c:\hart\wickbert\lib-debug\$(INTDIR),c:\hart\wickbert\lib-debug\,&quot;C:\Program Files\CGAL-3.2.1\auxiliary\gmp\lib\$(INTDIR)&quot;,&quot;C:\Program Files\CGAL-3.2.1\auxiliary\gmp\lib\&quot;,&quot;C:\Program Files\OpenMesh\Win\msvc7\Core\Debug\$(INTDIR)&quot;,&quot;C:\Program Files\OpenMesh\Win\msvc7\Core\Debug\&quot;,C:\hart\Wickbert\bin\$(INTDIR),C:\hart\Wickbert\bin\"
				ProgramDatabaseFile="C:/hart/Wickbert/bin/$(OutDir)\wxModeler.pdb"
				GenerateDebugInformation="TRUE"
				SubSystem="2"
				StackReserveSize="10000000"/>
		</Configuration>
		<Configuration
			Name="Release|Win32"
			OutputDirectory="Release"
			IntermediateDirectory=".\Release"
			ConfigurationType="1"
			UseOfMFC="0"
			ATLMinimizesCRunTimeLibraryUsage="FALSE"
			CharacterSet="2">
			<Tool
				Name="VCCLCompilerTool"
				AdditionalOptions="   /Zm1000     /D NDEBUG   /D NDEBUG -DCMAKE_INTDIR=\&quot;Release\&quot;"
				AdditionalIncludeDirectories="&quot;C:\Program Files\wxWidgets-2.6.3\include&quot;;&quot;C:\Program Files\wxWidgets-2.6.3\include\..\contrib\include&quot;;&quot;C:\Program Files\wxWidgets-2.6.3\lib\vc_lib\msw&quot;;&quot;C:\Program Files\CGAL-3.2.1\include&quot;;&quot;C:\Program Files\CGAL-3.2.1\include\CGAL\config\msvc7&quot;;&quot;C:\Program Files\CGAL-3.2.1\auxiliary\gmp\include&quot;;ism;libgm;Particles;Surface;C:\Boost\include\boost-1_33;&quot;C:\Program Files&quot;;c:\hart\wickbert\gsl;\pi;C:\hart\Wickbert;C:\hart\Wickbert\Surface;C:\hart\Wickbert\Particles;C:\hart\Wickbert\Particles\Attributes;"
				ExceptionHandling="TRUE"
				InlineFunctionExpansion="1"
				Optimization="2"
				RuntimeLibrary="2"
				RuntimeTypeInfo="TRUE"
				WarningLevel="3"
				PreprocessorDefinitions="WIN32,_WINDOWS,WINDOWS,WIN32,__WXMSW__,_USE_MATH_DEFINES,NOMINMAX,_WIN32,_HAS_ITERATOR_DEBUGGING=0,_SECURE_SCL=0,_CRT_SECURE_NO_DEPRECATE,WB_USE_CGAL,"
				AssemblerListingLocation="Release"
				ObjectFile="Release\"
				SuppressStartupBanner="FALSE"
/>
			<Tool
				Name="VCCustomBuildTool"/>
			<Tool
				Name="VCResourceCompilerTool"
				AdditionalIncludeDirectories="&quot;C:\Program Files\wxWidgets-2.6.3\include&quot;;&quot;C:\Program Files\wxWidgets-2.6.3\include\..\contrib\include&quot;;&quot;C:\Program Files\wxWidgets-2.6.3\lib\vc_lib\msw&quot;;&quot;C:\Program Files\CGAL-3.2.1\include&quot;;&quot;C:\Program Files\CGAL-3.2.1\include\CGAL\config\msvc7&quot;;&quot;C:\Program Files\CGAL-3.2.1\auxiliary\gmp\include&quot;;ism;libgm;Particles;Surface;C:\Boost\include\boost-1_33;&quot;C:\Program Files&quot;;c:\hart\wickbert\gsl;\pi;C:\hart\Wickbert;C:\hart\Wickbert\Surface;C:\hart\Wickbert\Particles;C:\hart\Wickbert\Particles\Attributes;"
				PreprocessorDefinitions="WIN32,_WINDOWS,WINDOWS,WIN32,__WXMSW__,_USE_MATH_DEFINES,NOMINMAX,_WIN32,_HAS_ITERATOR_DEBUGGING=0,_SECURE_SCL=0,_CRT_SECURE_NO_DEPRECATE,WB_USE_CGAL," />
			<Tool
				Name="VCMIDLTool"/>
			<Tool
				Name="VCPreBuildEventTool"/>
			<Tool
				Name="VCPreLinkEventTool"/>
			<Tool
				Name="VCPostBuildEventTool"/>
			<Tool
				Name="VCLinkerTool"
				AdditionalOptions="/MACHINE:I386 /STACK:10000000 /machine:I386 /INCREMENTAL:YES"
				AdditionalDependencies="kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib  kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib gm.lib ism.lib Surface.lib Particles.lib OpenMeshCore.lib libgsl.lib comctl32.lib wsock32.lib rpcrt4.lib wxbase26.lib wxbase26_net.lib wxbase26_xml.lib wxmsw26_adv.lib wxmsw26_core.lib wxmsw26_html.lib wxmsw26_xrc.lib wxmsw26_gl.lib wxregex.lib wxexpat.lib wxpng.lib wxtiff.lib wxjpeg.lib wxzlib.lib CGAL.lib gmp.lib "
				OutputFile="C:\hart\Wickbert\bin\Release\wxModeler.exe"
				LinkIncremental="1"
				SuppressStartupBanner="FALSE"
				AdditionalLibraryDirectories="C:\hart\Wickbert\bin\$(INTDIR),C:\hart\Wickbert\bin\,&quot;C:\Program Files\wxWidgets-2.6.3\lib\vc_lib\$(INTDIR)&quot;,&quot;C:\Program Files\wxWidgets-2.6.3\lib\vc_lib\&quot;,&quot;C:\Program Files\OpenMesh\Win\msvc7\Core\Release\$(INTDIR)&quot;,&quot;C:\Program Files\OpenMesh\Win\msvc7\Core\Release\&quot;,&quot;C:\Program Files\CGAL-3.2.1\lib\msvc7\$(INTDIR)&quot;,&quot;C:\Program Files\CGAL-3.2.1\lib\msvc7\&quot;,c:\hart\wickbert\lib-release\$(INTDIR),c:\hart\wickbert\lib-release\,c:\hart\wickbert\lib-debug\$(INTDIR),c:\hart\wickbert\lib-debug\,&quot;C:\Program Files\CGAL-3.2.1\auxiliary\gmp\lib\$(INTDIR)&quot;,&quot;C:\Program Files\CGAL-3.2.1\auxiliary\gmp\lib\&quot;,&quot;C:\Program Files\OpenMesh\Win\msvc7\Core\Debug\$(INTDIR)&quot;,&quot;C:\Program Files\OpenMesh\Win\msvc7\Core\Debug\&quot;,C:\hart\Wickbert\bin\$(INTDIR),C:\hart\Wickbert\bin\"
				ProgramDatabaseFile="C:/hart/Wickbert/bin/$(OutDir)\wxModeler.pdb"
				SubSystem="2"
				StackReserveSize="10000000"/>
		</Configuration>
	</Configurations>
	<Files>
			<File
				RelativePath="C:\hart\Wickbert\wxModeler\CMakeLists.txt">
				<FileConfiguration
					Name="Debug|Win32">
					<Tool
					Name="VCCustomBuildTool"
					Description="Building Custom Rule wxModeler.vcproj.cmake"
					CommandLine="&quot;C:\Program Files\CMake20\bin\cmake.exe&quot; C:\hart\Wickbert\wxModeler\CMakeLists.txt -HC:\hart\Wickbert -BC:\hart\Wickbert 

"
					AdditionalDependencies="C:\hart\Wickbert\CMakeLists.txt;C:\hart\Wickbert\CMakeSystem.cmake;C:\hart\Wickbert\CMakeCCompiler.cmake;C:\hart\Wickbert\CMakeCXXCompiler.cmake;&quot;C:\Program Files\CMake20\Modules\CMakeSystemSpecificInformation.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\Platform\Windows.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\Platform\Windows-cl.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\Platform\Windows-cl.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeDefaultMakeRuleVariables.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeBackwardCompatibilityC.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeVS7BackwardCompatibility.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeBackwardCompatibilityCXX.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\FindOpenGL.cmake&quot;;C:\hart\Wickbert\CMake\Modules\FindwxW.cmake;C:\hart\Wickbert\wxModeler\CMakeLists.txt;&quot;C:\Program Files\CMake20\Templates\CMakeWindowsSystemConfig.cmake&quot;;C:\hart\Wickbert\wxModeler\CMakeLists.txt;"
					Outputs="wxModeler.vcproj.cmake"/>
				</FileConfiguration>
				<FileConfiguration
					Name="Release|Win32">
					<Tool
					Name="VCCustomBuildTool"
					Description="Building Custom Rule wxModeler.vcproj.cmake"
					CommandLine="&quot;C:\Program Files\CMake20\bin\cmake.exe&quot; C:\hart\Wickbert\wxModeler\CMakeLists.txt -HC:\hart\Wickbert -BC:\hart\Wickbert 

"
					AdditionalDependencies="C:\hart\Wickbert\CMakeLists.txt;C:\hart\Wickbert\CMakeSystem.cmake;C:\hart\Wickbert\CMakeCCompiler.cmake;C:\hart\Wickbert\CMakeCXXCompiler.cmake;&quot;C:\Program Files\CMake20\Modules\CMakeSystemSpecificInformation.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\Platform\Windows.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\Platform\Windows-cl.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\Platform\Windows-cl.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeDefaultMakeRuleVariables.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeBackwardCompatibilityC.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeVS7BackwardCompatibility.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeBackwardCompatibilityCXX.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\FindOpenGL.cmake&quot;;C:\hart\Wickbert\CMake\Modules\FindwxW.cmake;C:\hart\Wickbert\wxModeler\CMakeLists.txt;&quot;C:\Program Files\CMake20\Templates\CMakeWindowsSystemConfig.cmake&quot;;C:\hart\Wickbert\wxModeler\CMakeLists.txt;"
					Outputs="wxModeler.vcproj.cmake"/>
				</FileConfiguration>
			</File>
		<Filter
			Name="Source Files"
			Filter="">
			<File
				RelativePath="C:\hart\Wickbert\wxModeler\wxModeler.cpp">
				<FileConfiguration
					Name="Debug|Win32">
					<Tool
					Name="VCCLCompilerTool"
					AdditionalOptions=" /TP "
					/>
				</FileConfiguration>
				<FileConfiguration
					Name="Release|Win32">
					<Tool
					Name="VCCLCompilerTool"
					AdditionalOptions=" /TP "
					/>
				</FileConfiguration>
			</File>
			<File
				RelativePath="C:\hart\Wickbert\wxModeler\DisplayWindow.cpp">
				<FileConfiguration
					Name="Debug|Win32">
					<Tool
					Name="VCCLCompilerTool"
					AdditionalOptions=" /TP "
					/>
				</FileConfiguration>
				<FileConfiguration
					Name="Release|Win32">
					<Tool
					Name="VCCLCompilerTool"
					AdditionalOptions=" /TP "
					/>
				</FileConfiguration>
			</File>
			<File
				RelativePath="C:\hart\Wickbert\wxModeler\ParticleTree.cpp">
				<FileConfiguration
					Name="Debug|Win32">
					<Tool
					Name="VCCLCompilerTool"
					AdditionalOptions=" /TP "
					/>
				</FileConfiguration>
				<FileConfiguration
					Name="Release|Win32">
					<Tool
					Name="VCCLCompilerTool"
					AdditionalOptions=" /TP "
					/>
				</FileConfiguration>
			</File>
			<File
				RelativePath="C:\hart\Wickbert\wxModeler\SurfaceTree.cpp">
				<FileConfiguration
					Name="Debug|Win32">
					<Tool
					Name="VCCLCompilerTool"
					AdditionalOptions=" /TP "
					/>
				</FileConfiguration>
				<FileConfiguration
					Name="Release|Win32">
					<Tool
					Name="VCCLCompilerTool"
					AdditionalOptions=" /TP "
					/>
				</FileConfiguration>
			</File>
			<File
				RelativePath="C:\hart\Wickbert\wxModeler\LogFrame.cpp">
				<FileConfiguration
					Name="Debug|Win32">
					<Tool
					Name="VCCLCompilerTool"
					AdditionalOptions=" /TP "
					/>
				</FileConfiguration>
				<FileConfiguration
					Name="Release|Win32">
					<Tool
					Name="VCCLCompilerTool"
					AdditionalOptions=" /TP "
					/>
				</FileConfiguration>
			</File>
			<File
				RelativePath="C:\hart\Wickbert\wxModeler\ClipartFrame.cpp">
				<FileConfiguration
					Name="Debug|Win32">
					<Tool
					Name="VCCLCompilerTool"
					AdditionalOptions=" /TP "
					/>
				</FileConfiguration>
				<FileConfiguration
					Name="Release|Win32">
					<Tool
					Name="VCCLCompilerTool"
					AdditionalOptions=" /TP "
					/>
				</FileConfiguration>
			</File>
			<File
				RelativePath="C:\hart\Wickbert\wxModeler\dcsvg.cpp">
				<FileConfiguration
					Name="Debug|Win32">
					<Tool
					Name="VCCLCompilerTool"
					AdditionalOptions=" /TP "
					/>
				</FileConfiguration>
				<FileConfiguration
					Name="Release|Win32">
					<Tool
					Name="VCCLCompilerTool"
					AdditionalOptions=" /TP "
					/>
				</FileConfiguration>
			</File>
			<File
				RelativePath="C:\hart\Wickbert\wxModeler\SVGshader.cpp">
				<FileConfiguration
					Name="Debug|Win32">
					<Tool
					Name="VCCLCompilerTool"
					AdditionalOptions=" /TP "
					/>
				</FileConfiguration>
				<FileConfiguration
					Name="Release|Win32">
					<Tool
					Name="VCCLCompilerTool"
					AdditionalOptions=" /TP "
					/>
				</FileConfiguration>
			</File>
		</Filter>
		<Filter
			Name="Header Files"
			Filter="">
			<File
				RelativePath="C:\hart\Wickbert\wxModeler\wxModeler.h">
			</File>
			<File
				RelativePath="C:\hart\Wickbert\wxModeler\DisplayWindow.h">
			</File>
			<File
				RelativePath="C:\hart\Wickbert\wxModeler\ParticleTree.h">
			</File>
			<File
				RelativePath="C:\hart\Wickbert\wxModeler\SurfaceTree.h">
			</File>
			<File
				RelativePath="C:\hart\Wickbert\wxModeler\LogFrame.h">
			</File>
			<File
				RelativePath="C:\hart\Wickbert\wxModeler\ClipartFrame.h">
			</File>
			<File
				RelativePath="C:\hart\Wickbert\wxModeler\dcsvg.h">
			</File>
			<File
				RelativePath="C:\hart\Wickbert\wxModeler\SVGshader.h">
			</File>
		</Filter>
	</Files>
	<Globals>
	</Globals>
</VisualStudioProject>
