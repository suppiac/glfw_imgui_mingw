add_rules("mode.debug", "mode.release")

target("glfw_imgui_mingw")
    set_kind("binary")
    -- 设置C/C++标准
    set_languages("c17", "cxx17")
    -- 设置MingW64编译器
    set_toolchains("mingw")
    -- 添加源文件路径，包括imgui源文件
    add_files("src/*.cpp", "lib/imgui/src/*.cpp")
    -- 添加glfw、imgui头文件
    add_includedirs("lib/glfw/include", "lib/imgui/include")
    -- 添加glfw库文件
    add_linkdirs("lib/glfw/lib")
    -- 链接库
    add_links("glfw3", "opengl32","user32","Gdi32","Shell32")
