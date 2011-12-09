<?xml version="1.0" encoding = "Windows-1252"?>
<VisualStudioProject
	ProjectType="Visual C++"
	Version="7.10"
	Name="ALL_BUILD"
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
			ConfigurationType="10"
			UseOfMFC="0"
			ATLMinimizesCRunTimeLibraryUsage="FALSE"
			CharacterSet="2">
			<Tool
				Name="VCCLCompilerTool"
				AdditionalOptions="   /Zm1000     -DCMAKE_INTDIR=\&quot;Debug\&quot;"
				AdditionalIncludeDirectories="&quot;C:\Program Files\wxWidgets-2.6.3\include&quot;;&quot;C:\Program Files\wxWidgets-2.6.3\include\..\contrib\include&quot;;&quot;C:\Program Files\wxWidgets-2.6.3\lib\vc_lib\msw&quot;;&quot;C:\Program Files\CGAL-3.2.1\include&quot;;&quot;C:\Program Files\CGAL-3.2.1\include\CGAL\config\msvc7&quot;;&quot;C:\Program Files\CGAL-3.2.1\auxiliary\gmp\include&quot;;ism;libgm;Particles;Surface;C:\Boost\include\boost-1_33;&quot;C:\Program Files&quot;;c:\hart\wickbert\gsl;\pi;"
				BasicRuntimeChecks="1"
				DebugInformationFormat="3"
				InlineFunctionExpansion="0"
				Optimization="0"
				RuntimeLibrary="3"
				WarningLevel="3"
				PreprocessorDefinitions="WIN32,_DEBUG,_WINDOWS,WINDOWS,WIN32,__WXMSW__,_USE_MATH_DEFINES,NOMINMAX,_WIN32,_HAS_ITERATOR_DEBUGGING=0,_SECURE_SCL=0,_CRT_SECURE_NO_DEPRECATE,WB_USE_CGAL,"
				AssemblerListingLocation="Debug"
				ObjectFile="Debug\"
				SuppressStartupBanner="FALSE"
				ProgramDatabaseFileName="C:/hart/Wickbert/bin/$(OutDir)/ALL_BUILD.pdb"
/>
			<Tool
				Name="VCCustomBuildTool"/>
			<Tool
				Name="VCResourceCompilerTool"
				AdditionalIncludeDirectories="&quot;C:\Program Files\wxWidgets-2.6.3\include&quot;;&quot;C:\Program Files\wxWidgets-2.6.3\include\..\contrib\include&quot;;&quot;C:\Program Files\wxWidgets-2.6.3\lib\vc_lib\msw&quot;;&quot;C:\Program Files\CGAL-3.2.1\include&quot;;&quot;C:\Program Files\CGAL-3.2.1\include\CGAL\config\msvc7&quot;;&quot;C:\Program Files\CGAL-3.2.1\auxiliary\gmp\include&quot;;ism;libgm;Particles;Surface;C:\Boost\include\boost-1_33;&quot;C:\Program Files&quot;;c:\hart\wickbert\gsl;\pi;"
				PreprocessorDefinitions="WIN32,_DEBUG,_WINDOWS,WINDOWS,WIN32,__WXMSW__,_USE_MATH_DEFINES,NOMINMAX,_WIN32,_HAS_ITERATOR_DEBUGGING=0,_SECURE_SCL=0,_CRT_SECURE_NO_DEPRECATE,WB_USE_CGAL," />
			<Tool
				Name="VCMIDLTool"/>
			<Tool
				Name="VCPreBuildEventTool"/>
			<Tool
				Name="VCPreLinkEventTool"/>
			<Tool
				Name="VCPostBuildEventTool"
CommandLine="echo &quot;Build all projects&quot;
"/>
		</Configuration>
		<Configuration
			Name="Release|Win32"
			OutputDirectory="Release"
			IntermediateDirectory=".\Release"
			ConfigurationType="10"
			UseOfMFC="0"
			ATLMinimizesCRunTimeLibraryUsage="FALSE"
			CharacterSet="2">
			<Tool
				Name="VCCLCompilerTool"
				AdditionalOptions="   /Zm1000   /D NDEBUG   /D NDEBUG -DCMAKE_INTDIR=\&quot;Release\&quot;"
				AdditionalIncludeDirectories="&quot;C:\Program Files\wxWidgets-2.6.3\include&quot;;&quot;C:\Program Files\wxWidgets-2.6.3\include\..\contrib\include&quot;;&quot;C:\Program Files\wxWidgets-2.6.3\lib\vc_lib\msw&quot;;&quot;C:\Program Files\CGAL-3.2.1\include&quot;;&quot;C:\Program Files\CGAL-3.2.1\include\CGAL\config\msvc7&quot;;&quot;C:\Program Files\CGAL-3.2.1\auxiliary\gmp\include&quot;;ism;libgm;Particles;Surface;C:\Boost\include\boost-1_33;&quot;C:\Program Files&quot;;c:\hart\wickbert\gsl;\pi;"
				InlineFunctionExpansion="1"
				Optimization="2"
				RuntimeLibrary="2"
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
				AdditionalIncludeDirectories="&quot;C:\Program Files\wxWidgets-2.6.3\include&quot;;&quot;C:\Program Files\wxWidgets-2.6.3\include\..\contrib\include&quot;;&quot;C:\Program Files\wxWidgets-2.6.3\lib\vc_lib\msw&quot;;&quot;C:\Program Files\CGAL-3.2.1\include&quot;;&quot;C:\Program Files\CGAL-3.2.1\include\CGAL\config\msvc7&quot;;&quot;C:\Program Files\CGAL-3.2.1\auxiliary\gmp\include&quot;;ism;libgm;Particles;Surface;C:\Boost\include\boost-1_33;&quot;C:\Program Files&quot;;c:\hart\wickbert\gsl;\pi;"
				PreprocessorDefinitions="WIN32,_WINDOWS,WINDOWS,WIN32,__WXMSW__,_USE_MATH_DEFINES,NOMINMAX,_WIN32,_HAS_ITERATOR_DEBUGGING=0,_SECURE_SCL=0,_CRT_SECURE_NO_DEPRECATE,WB_USE_CGAL," />
			<Tool
				Name="VCMIDLTool"/>
			<Tool
				Name="VCPreBuildEventTool"/>
			<Tool
				Name="VCPreLinkEventTool"/>
			<Tool
				Name="VCPostBuildEventTool"
CommandLine="echo &quot;Build all projects&quot;
"/>
		</Configuration>
	</Configurations>
	<Files>
			<File
				RelativePath="C:\hart\Wickbert\CMakeLists.txt">
				<FileConfiguration
					Name="Debug|Win32">
					<Tool
					Name="VCCustomBuildTool"
					Description="Building Custom Rule ALL_BUILD.vcproj.cmake"
					CommandLine="&quot;C:\Program Files\CMake20\bin\cmake.exe&quot; C:\hart\Wickbert\CMakeLists.txt -HC:\hart\Wickbert -BC:\hart\Wickbert 

"
					AdditionalDependencies="C:\hart\Wickbert\CMakeLists.txt;&quot;C:\Program Files\CMake20\Modules\CMakeDetermineSystem.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeSystem.cmake.in&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeDetermineCCompiler.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeCCompiler.cmake.in&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeDetermineCXXCompiler.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeCXXCompiler.cmake.in&quot;;C:\hart\Wickbert\CMakeSystem.cmake;C:\hart\Wickbert\CMakeCCompiler.cmake;C:\hart\Wickbert\CMakeCXXCompiler.cmake;&quot;C:\Program Files\CMake20\Modules\CMakeSystemSpecificInformation.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\Platform\Windows.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\Platform\Windows-cl.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\Platform\Windows-cl.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeDefaultMakeRuleVariables.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeTestCCompiler.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeTestCXXCompiler.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeBackwardCompatibilityC.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeVS7BackwardCompatibility.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeBackwardCompatibilityCXX.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\FindOpenGL.cmake&quot;;C:\hart\Wickbert\CMake\Modules\FindwxW.cmake;C:\hart\Wickbert\wxModeler\defaultparticlesystem.par;C:\hart\Wickbert\wxModeler\defaultparticlesystem.par;C:\hart\Wickbert\wxModeler\bitmaps\Particles.bmp;C:\hart\Wickbert\wxModeler\bitmaps\Particles.bmp;C:\hart\Wickbert\wxModeler\bitmaps\Particles.xpm;C:\hart\Wickbert\wxModeler\bitmaps\Particles.xpm;C:\hart\Wickbert\wxModeler\bitmaps\ParticleStuff.bmp;C:\hart\Wickbert\wxModeler\bitmaps\ParticleStuff.bmp;C:\hart\Wickbert\wxModeler\bitmaps\ParticleStuffHeader.bmp;C:\hart\Wickbert\wxModeler\bitmaps\ParticleStuffHeader.bmp;C:\hart\Wickbert\wxModeler\bitmaps\ParticleSystem.bmp;C:\hart\Wickbert\wxModeler\bitmaps\ParticleSystem.bmp;C:\hart\Wickbert\wxModeler\bitmaps\ParticleSystem.xpm;C:\hart\Wickbert\wxModeler\bitmaps\ParticleSystem.xpm;C:\hart\Wickbert\wxModeler\bitmaps\ParticleSystems.bmp;C:\hart\Wickbert\wxModeler\bitmaps\ParticleSystems.bmp;C:\hart\Wickbert\wxModeler\bitmaps\ParticleSystems.xpm;C:\hart\Wickbert\wxModeler\bitmaps\ParticleSystems.xpm;&quot;C:\Program Files\CMake20\Templates\CMakeWindowsSystemConfig.cmake&quot;;C:\hart\Wickbert\CMakeLists.txt;"
					Outputs="ALL_BUILD.vcproj.cmake"/>
				</FileConfiguration>
				<FileConfiguration
					Name="Release|Win32">
					<Tool
					Name="VCCustomBuildTool"
					Description="Building Custom Rule ALL_BUILD.vcproj.cmake"
					CommandLine="&quot;C:\Program Files\CMake20\bin\cmake.exe&quot; C:\hart\Wickbert\CMakeLists.txt -HC:\hart\Wickbert -BC:\hart\Wickbert 

"
					AdditionalDependencies="C:\hart\Wickbert\CMakeLists.txt;&quot;C:\Program Files\CMake20\Modules\CMakeDetermineSystem.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeSystem.cmake.in&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeDetermineCCompiler.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeCCompiler.cmake.in&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeDetermineCXXCompiler.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeCXXCompiler.cmake.in&quot;;C:\hart\Wickbert\CMakeSystem.cmake;C:\hart\Wickbert\CMakeCCompiler.cmake;C:\hart\Wickbert\CMakeCXXCompiler.cmake;&quot;C:\Program Files\CMake20\Modules\CMakeSystemSpecificInformation.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\Platform\Windows.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\Platform\Windows-cl.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\Platform\Windows-cl.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeDefaultMakeRuleVariables.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeTestCCompiler.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeTestCXXCompiler.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeBackwardCompatibilityC.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeVS7BackwardCompatibility.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeBackwardCompatibilityCXX.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\FindOpenGL.cmake&quot;;C:\hart\Wickbert\CMake\Modules\FindwxW.cmake;C:\hart\Wickbert\wxModeler\defaultparticlesystem.par;C:\hart\Wickbert\wxModeler\defaultparticlesystem.par;C:\hart\Wickbert\wxModeler\bitmaps\Particles.bmp;C:\hart\Wickbert\wxModeler\bitmaps\Particles.bmp;C:\hart\Wickbert\wxModeler\bitmaps\Particles.xpm;C:\hart\Wickbert\wxModeler\bitmaps\Particles.xpm;C:\hart\Wickbert\wxModeler\bitmaps\ParticleStuff.bmp;C:\hart\Wickbert\wxModeler\bitmaps\ParticleStuff.bmp;C:\hart\Wickbert\wxModeler\bitmaps\ParticleStuffHeader.bmp;C:\hart\Wickbert\wxModeler\bitmaps\ParticleStuffHeader.bmp;C:\hart\Wickbert\wxModeler\bitmaps\ParticleSystem.bmp;C:\hart\Wickbert\wxModeler\bitmaps\ParticleSystem.bmp;C:\hart\Wickbert\wxModeler\bitmaps\ParticleSystem.xpm;C:\hart\Wickbert\wxModeler\bitmaps\ParticleSystem.xpm;C:\hart\Wickbert\wxModeler\bitmaps\ParticleSystems.bmp;C:\hart\Wickbert\wxModeler\bitmaps\ParticleSystems.bmp;C:\hart\Wickbert\wxModeler\bitmaps\ParticleSystems.xpm;C:\hart\Wickbert\wxModeler\bitmaps\ParticleSystems.xpm;&quot;C:\Program Files\CMake20\Templates\CMakeWindowsSystemConfig.cmake&quot;;C:\hart\Wickbert\CMakeLists.txt;"
					Outputs="ALL_BUILD.vcproj.cmake"/>
				</FileConfiguration>
			</File>
	</Files>
	<Globals>
	</Globals>
</VisualStudioProject>
