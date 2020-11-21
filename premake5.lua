project "GLSLANG"
	kind "StaticLib"
	language "C"
	staticruntime "on"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		
	}
	filter "system:linux"
		pic "On"
		systemversion "latest"

		files
		{
			
		}

		defines
		{
			
		}

	filter "system:windows"
		systemversion "latest"

		files
		{
			
		}

		defines 
		{ 
			
		}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
