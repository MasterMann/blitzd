project "baald"
    kind "ConsoleApp"

    files { "**.cpp", "**.h" }
    includedirs { "..", ".", "../common" }
    links { "common", "interface", "mxml", "event" }

    configuration "vs* or codeblocks"
        files { "../Config.cpp", "../Config.h" }
        pchsource "../Config.cpp"
        pchheader "Config.h"
    configuration "not vs*"
	buildoptions { "-std=c++11" }
	linkoptions { "-std=c++11" }
    configuration "windows"
        links { "ws2_32", "mswsock", "kernel32", "user32" }
    configuration "bsd"
        links { "pthread" }
