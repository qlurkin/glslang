project "GLSLANG"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	includedirs{
		"glslang/Public",
		"glslang/Include",
		"glslang/MachineIndependent",
		"OGLCompilersDLL",
		"."
	}

	files
	{
		"glslang/**",
		"OGLCompilersDLL/**",
		"SPIRV/**"
	}

	excludes{
		"gtests/**",
		"StandAlone/**",
		"Test/**"
	}

	filter "system:linux"
		--pic "On"
		systemversion "latest"
		excludes {"glslang/OSDependent/Windows/**"}

	filter "system:windows"
		systemversion "latest"

	filter "system:macosx"
		systemversion "latest"
		excludes {"glslang/OSDependent/Windows/**"}


	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
