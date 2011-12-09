<?xml version="1.0" encoding = "Windows-1252"?>
<VisualStudioProject
	ProjectType="Visual C++"
	Version="7.10"
	Name="gm"
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
			ConfigurationType="4"
			UseOfMFC="0"
			ATLMinimizesCRunTimeLibraryUsage="FALSE"
			CharacterSet="2">
			<Tool
				Name="VCCLCompilerTool"
				AdditionalOptions="   /Zm1000       -DCMAKE_INTDIR=\&quot;Debug\&quot;"
				AdditionalIncludeDirectories="&quot;C:\Program Files\wxWidgets-2.6.3\include&quot;;&quot;C:\Program Files\wxWidgets-2.6.3\include\..\contrib\include&quot;;&quot;C:\Program Files\wxWidgets-2.6.3\lib\vc_lib\msw&quot;;&quot;C:\Program Files\CGAL-3.2.1\include&quot;;&quot;C:\Program Files\CGAL-3.2.1\include\CGAL\config\msvc7&quot;;&quot;C:\Program Files\CGAL-3.2.1\auxiliary\gmp\include&quot;;ism;libgm;Particles;Surface;C:\Boost\include\boost-1_33;&quot;C:\Program Files&quot;;c:\hart\wickbert\gsl;\pi;"
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
				ProgramDatabaseFileName="C:/hart/Wickbert/bin/$(OutDir)/gm.pdb"
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
				Name="VCPostBuildEventTool"/>
			<Tool
				Name="VCLibrarianTool"
				OutputFile="C:\hart\Wickbert\bin\$(OutDir)\gm.lib."/>
		</Configuration>
		<Configuration
			Name="Release|Win32"
			OutputDirectory="Release"
			IntermediateDirectory=".\Release"
			ConfigurationType="4"
			UseOfMFC="0"
			ATLMinimizesCRunTimeLibraryUsage="FALSE"
			CharacterSet="2">
			<Tool
				Name="VCCLCompilerTool"
				AdditionalOptions="   /Zm1000     /D NDEBUG   /D NDEBUG -DCMAKE_INTDIR=\&quot;Release\&quot;"
				AdditionalIncludeDirectories="&quot;C:\Program Files\wxWidgets-2.6.3\include&quot;;&quot;C:\Program Files\wxWidgets-2.6.3\include\..\contrib\include&quot;;&quot;C:\Program Files\wxWidgets-2.6.3\lib\vc_lib\msw&quot;;&quot;C:\Program Files\CGAL-3.2.1\include&quot;;&quot;C:\Program Files\CGAL-3.2.1\include\CGAL\config\msvc7&quot;;&quot;C:\Program Files\CGAL-3.2.1\auxiliary\gmp\include&quot;;ism;libgm;Particles;Surface;C:\Boost\include\boost-1_33;&quot;C:\Program Files&quot;;c:\hart\wickbert\gsl;\pi;"
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
				AdditionalIncludeDirectories="&quot;C:\Program Files\wxWidgets-2.6.3\include&quot;;&quot;C:\Program Files\wxWidgets-2.6.3\include\..\contrib\include&quot;;&quot;C:\Program Files\wxWidgets-2.6.3\lib\vc_lib\msw&quot;;&quot;C:\Program Files\CGAL-3.2.1\include&quot;;&quot;C:\Program Files\CGAL-3.2.1\include\CGAL\config\msvc7&quot;;&quot;C:\Program Files\CGAL-3.2.1\auxiliary\gmp\include&quot;;ism;libgm;Particles;Surface;C:\Boost\include\boost-1_33;&quot;C:\Program Files&quot;;c:\hart\wickbert\gsl;\pi;"
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
				Name="VCLibrarianTool"
				OutputFile="C:\hart\Wickbert\bin\$(OutDir)\gm.lib."/>
		</Configuration>
	</Configurations>
	<Files>
			<File
				RelativePath="C:\hart\Wickbert\libgm\CMakeLists.txt">
				<FileConfiguration
					Name="Debug|Win32">
					<Tool
					Name="VCCustomBuildTool"
					Description="Building Custom Rule gm.vcproj.cmake"
					CommandLine="&quot;C:\Program Files\CMake20\bin\cmake.exe&quot; C:\hart\Wickbert\libgm\CMakeLists.txt -HC:\hart\Wickbert -BC:\hart\Wickbert 

"
					AdditionalDependencies="C:\hart\Wickbert\CMakeLists.txt;C:\hart\Wickbert\CMakeSystem.cmake;C:\hart\Wickbert\CMakeCCompiler.cmake;C:\hart\Wickbert\CMakeCXXCompiler.cmake;&quot;C:\Program Files\CMake20\Modules\CMakeSystemSpecificInformation.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\Platform\Windows.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\Platform\Windows-cl.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\Platform\Windows-cl.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeDefaultMakeRuleVariables.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeBackwardCompatibilityC.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeVS7BackwardCompatibility.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeBackwardCompatibilityCXX.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\FindOpenGL.cmake&quot;;C:\hart\Wickbert\CMake\Modules\FindwxW.cmake;C:\hart\Wickbert\libgm\CMakeLists.txt;&quot;C:\Program Files\CMake20\Templates\CMakeWindowsSystemConfig.cmake&quot;;C:\hart\Wickbert\libgm\CMakeLists.txt;"
					Outputs="gm.vcproj.cmake"/>
				</FileConfiguration>
				<FileConfiguration
					Name="Release|Win32">
					<Tool
					Name="VCCustomBuildTool"
					Description="Building Custom Rule gm.vcproj.cmake"
					CommandLine="&quot;C:\Program Files\CMake20\bin\cmake.exe&quot; C:\hart\Wickbert\libgm\CMakeLists.txt -HC:\hart\Wickbert -BC:\hart\Wickbert 

"
					AdditionalDependencies="C:\hart\Wickbert\CMakeLists.txt;C:\hart\Wickbert\CMakeSystem.cmake;C:\hart\Wickbert\CMakeCCompiler.cmake;C:\hart\Wickbert\CMakeCXXCompiler.cmake;&quot;C:\Program Files\CMake20\Modules\CMakeSystemSpecificInformation.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\Platform\Windows.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\Platform\Windows-cl.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\Platform\Windows-cl.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeDefaultMakeRuleVariables.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeBackwardCompatibilityC.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeVS7BackwardCompatibility.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\CMakeBackwardCompatibilityCXX.cmake&quot;;&quot;C:\Program Files\CMake20\Modules\FindOpenGL.cmake&quot;;C:\hart\Wickbert\CMake\Modules\FindwxW.cmake;C:\hart\Wickbert\libgm\CMakeLists.txt;&quot;C:\Program Files\CMake20\Templates\CMakeWindowsSystemConfig.cmake&quot;;C:\hart\Wickbert\libgm\CMakeLists.txt;"
					Outputs="gm.vcproj.cmake"/>
				</FileConfiguration>
			</File>
		<Filter
			Name="Source Files"
			Filter="">
			<File
				RelativePath="C:\hart\Wickbert\libgm\gmMat3.cpp">
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
				RelativePath="C:\hart\Wickbert\libgm\gmMat4.cpp">
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
	</Files>
	<Globals>
	</Globals>
</VisualStudioProject>
