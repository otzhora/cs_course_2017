# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.glfw.Debug:
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Debug/libglfw.dylib:
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Debug/libglfw.dylib


PostBuild.boing.Debug:
PostBuild.glfw.Debug: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Debug/boing.app/Contents/MacOS/boing
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Debug/boing.app/Contents/MacOS/boing:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Debug/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Debug/boing.app/Contents/MacOS/boing


PostBuild.gears.Debug:
PostBuild.glfw.Debug: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Debug/gears.app/Contents/MacOS/gears
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Debug/gears.app/Contents/MacOS/gears:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Debug/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Debug/gears.app/Contents/MacOS/gears


PostBuild.heightmap.Debug:
PostBuild.glfw.Debug: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Debug/heightmap.app/Contents/MacOS/heightmap
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Debug/heightmap.app/Contents/MacOS/heightmap:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Debug/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Debug/heightmap.app/Contents/MacOS/heightmap


PostBuild.particles.Debug:
PostBuild.glfw.Debug: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Debug/particles.app/Contents/MacOS/particles
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Debug/particles.app/Contents/MacOS/particles:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Debug/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Debug/particles.app/Contents/MacOS/particles


PostBuild.simple.Debug:
PostBuild.glfw.Debug: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Debug/simple.app/Contents/MacOS/simple
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Debug/simple.app/Contents/MacOS/simple:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Debug/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Debug/simple.app/Contents/MacOS/simple


PostBuild.splitview.Debug:
PostBuild.glfw.Debug: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Debug/splitview.app/Contents/MacOS/splitview
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Debug/splitview.app/Contents/MacOS/splitview:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Debug/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Debug/splitview.app/Contents/MacOS/splitview


PostBuild.wave.Debug:
PostBuild.glfw.Debug: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Debug/wave.app/Contents/MacOS/wave
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Debug/wave.app/Contents/MacOS/wave:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Debug/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Debug/wave.app/Contents/MacOS/wave


PostBuild.clipboard.Debug:
PostBuild.glfw.Debug: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/clipboard
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/clipboard:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Debug/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/clipboard


PostBuild.cursor.Debug:
PostBuild.glfw.Debug: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/cursor
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/cursor:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Debug/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/cursor


PostBuild.empty.Debug:
PostBuild.glfw.Debug: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/empty.app/Contents/MacOS/empty
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/empty.app/Contents/MacOS/empty:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Debug/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/empty.app/Contents/MacOS/empty


PostBuild.events.Debug:
PostBuild.glfw.Debug: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/events
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/events:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Debug/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/events


PostBuild.gamma.Debug:
PostBuild.glfw.Debug: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/gamma
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/gamma:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Debug/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/gamma


PostBuild.glfwinfo.Debug:
PostBuild.glfw.Debug: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/glfwinfo
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/glfwinfo:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Debug/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/glfwinfo


PostBuild.icon.Debug:
PostBuild.glfw.Debug: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/icon.app/Contents/MacOS/icon
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/icon.app/Contents/MacOS/icon:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Debug/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/icon.app/Contents/MacOS/icon


PostBuild.iconify.Debug:
PostBuild.glfw.Debug: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/iconify
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/iconify:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Debug/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/iconify


PostBuild.joysticks.Debug:
PostBuild.glfw.Debug: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/joysticks
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/joysticks:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Debug/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/joysticks


PostBuild.monitors.Debug:
PostBuild.glfw.Debug: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/monitors
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/monitors:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Debug/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/monitors


PostBuild.msaa.Debug:
PostBuild.glfw.Debug: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/msaa
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/msaa:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Debug/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/msaa


PostBuild.reopen.Debug:
PostBuild.glfw.Debug: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/reopen
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/reopen:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Debug/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/reopen


PostBuild.sharing.Debug:
PostBuild.glfw.Debug: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/sharing.app/Contents/MacOS/sharing
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/sharing.app/Contents/MacOS/sharing:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Debug/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/sharing.app/Contents/MacOS/sharing


PostBuild.tearing.Debug:
PostBuild.glfw.Debug: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/tearing.app/Contents/MacOS/tearing
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/tearing.app/Contents/MacOS/tearing:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Debug/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/tearing.app/Contents/MacOS/tearing


PostBuild.threads.Debug:
PostBuild.glfw.Debug: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/threads.app/Contents/MacOS/threads
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/threads.app/Contents/MacOS/threads:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Debug/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/threads.app/Contents/MacOS/threads


PostBuild.timeout.Debug:
PostBuild.glfw.Debug: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/timeout.app/Contents/MacOS/timeout
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/timeout.app/Contents/MacOS/timeout:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Debug/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/timeout.app/Contents/MacOS/timeout


PostBuild.title.Debug:
PostBuild.glfw.Debug: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/title.app/Contents/MacOS/title
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/title.app/Contents/MacOS/title:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Debug/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/title.app/Contents/MacOS/title


PostBuild.windows.Debug:
PostBuild.glfw.Debug: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/windows.app/Contents/MacOS/windows
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/windows.app/Contents/MacOS/windows:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Debug/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Debug/windows.app/Contents/MacOS/windows


PostBuild.glfw.Release:
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Release/libglfw.dylib:
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Release/libglfw.dylib


PostBuild.boing.Release:
PostBuild.glfw.Release: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Release/boing.app/Contents/MacOS/boing
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Release/boing.app/Contents/MacOS/boing:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Release/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Release/boing.app/Contents/MacOS/boing


PostBuild.gears.Release:
PostBuild.glfw.Release: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Release/gears.app/Contents/MacOS/gears
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Release/gears.app/Contents/MacOS/gears:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Release/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Release/gears.app/Contents/MacOS/gears


PostBuild.heightmap.Release:
PostBuild.glfw.Release: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Release/heightmap.app/Contents/MacOS/heightmap
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Release/heightmap.app/Contents/MacOS/heightmap:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Release/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Release/heightmap.app/Contents/MacOS/heightmap


PostBuild.particles.Release:
PostBuild.glfw.Release: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Release/particles.app/Contents/MacOS/particles
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Release/particles.app/Contents/MacOS/particles:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Release/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Release/particles.app/Contents/MacOS/particles


PostBuild.simple.Release:
PostBuild.glfw.Release: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Release/simple.app/Contents/MacOS/simple
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Release/simple.app/Contents/MacOS/simple:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Release/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Release/simple.app/Contents/MacOS/simple


PostBuild.splitview.Release:
PostBuild.glfw.Release: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Release/splitview.app/Contents/MacOS/splitview
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Release/splitview.app/Contents/MacOS/splitview:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Release/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Release/splitview.app/Contents/MacOS/splitview


PostBuild.wave.Release:
PostBuild.glfw.Release: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Release/wave.app/Contents/MacOS/wave
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Release/wave.app/Contents/MacOS/wave:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Release/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/Release/wave.app/Contents/MacOS/wave


PostBuild.clipboard.Release:
PostBuild.glfw.Release: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/clipboard
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/clipboard:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Release/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/clipboard


PostBuild.cursor.Release:
PostBuild.glfw.Release: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/cursor
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/cursor:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Release/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/cursor


PostBuild.empty.Release:
PostBuild.glfw.Release: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/empty.app/Contents/MacOS/empty
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/empty.app/Contents/MacOS/empty:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Release/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/empty.app/Contents/MacOS/empty


PostBuild.events.Release:
PostBuild.glfw.Release: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/events
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/events:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Release/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/events


PostBuild.gamma.Release:
PostBuild.glfw.Release: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/gamma
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/gamma:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Release/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/gamma


PostBuild.glfwinfo.Release:
PostBuild.glfw.Release: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/glfwinfo
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/glfwinfo:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Release/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/glfwinfo


PostBuild.icon.Release:
PostBuild.glfw.Release: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/icon.app/Contents/MacOS/icon
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/icon.app/Contents/MacOS/icon:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Release/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/icon.app/Contents/MacOS/icon


PostBuild.iconify.Release:
PostBuild.glfw.Release: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/iconify
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/iconify:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Release/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/iconify


PostBuild.joysticks.Release:
PostBuild.glfw.Release: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/joysticks
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/joysticks:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Release/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/joysticks


PostBuild.monitors.Release:
PostBuild.glfw.Release: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/monitors
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/monitors:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Release/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/monitors


PostBuild.msaa.Release:
PostBuild.glfw.Release: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/msaa
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/msaa:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Release/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/msaa


PostBuild.reopen.Release:
PostBuild.glfw.Release: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/reopen
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/reopen:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Release/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/reopen


PostBuild.sharing.Release:
PostBuild.glfw.Release: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/sharing.app/Contents/MacOS/sharing
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/sharing.app/Contents/MacOS/sharing:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Release/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/sharing.app/Contents/MacOS/sharing


PostBuild.tearing.Release:
PostBuild.glfw.Release: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/tearing.app/Contents/MacOS/tearing
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/tearing.app/Contents/MacOS/tearing:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Release/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/tearing.app/Contents/MacOS/tearing


PostBuild.threads.Release:
PostBuild.glfw.Release: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/threads.app/Contents/MacOS/threads
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/threads.app/Contents/MacOS/threads:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Release/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/threads.app/Contents/MacOS/threads


PostBuild.timeout.Release:
PostBuild.glfw.Release: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/timeout.app/Contents/MacOS/timeout
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/timeout.app/Contents/MacOS/timeout:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Release/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/timeout.app/Contents/MacOS/timeout


PostBuild.title.Release:
PostBuild.glfw.Release: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/title.app/Contents/MacOS/title
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/title.app/Contents/MacOS/title:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Release/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/title.app/Contents/MacOS/title


PostBuild.windows.Release:
PostBuild.glfw.Release: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/windows.app/Contents/MacOS/windows
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/windows.app/Contents/MacOS/windows:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Release/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/Release/windows.app/Contents/MacOS/windows


PostBuild.glfw.MinSizeRel:
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/MinSizeRel/libglfw.dylib:
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/MinSizeRel/libglfw.dylib


PostBuild.boing.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/MinSizeRel/boing.app/Contents/MacOS/boing
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/MinSizeRel/boing.app/Contents/MacOS/boing:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/MinSizeRel/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/MinSizeRel/boing.app/Contents/MacOS/boing


PostBuild.gears.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/MinSizeRel/gears.app/Contents/MacOS/gears
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/MinSizeRel/gears.app/Contents/MacOS/gears:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/MinSizeRel/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/MinSizeRel/gears.app/Contents/MacOS/gears


PostBuild.heightmap.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/MinSizeRel/heightmap.app/Contents/MacOS/heightmap
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/MinSizeRel/heightmap.app/Contents/MacOS/heightmap:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/MinSizeRel/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/MinSizeRel/heightmap.app/Contents/MacOS/heightmap


PostBuild.particles.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/MinSizeRel/particles.app/Contents/MacOS/particles
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/MinSizeRel/particles.app/Contents/MacOS/particles:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/MinSizeRel/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/MinSizeRel/particles.app/Contents/MacOS/particles


PostBuild.simple.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/MinSizeRel/simple.app/Contents/MacOS/simple
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/MinSizeRel/simple.app/Contents/MacOS/simple:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/MinSizeRel/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/MinSizeRel/simple.app/Contents/MacOS/simple


PostBuild.splitview.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/MinSizeRel/splitview.app/Contents/MacOS/splitview
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/MinSizeRel/splitview.app/Contents/MacOS/splitview:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/MinSizeRel/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/MinSizeRel/splitview.app/Contents/MacOS/splitview


PostBuild.wave.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/MinSizeRel/wave.app/Contents/MacOS/wave
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/MinSizeRel/wave.app/Contents/MacOS/wave:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/MinSizeRel/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/MinSizeRel/wave.app/Contents/MacOS/wave


PostBuild.clipboard.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/clipboard
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/clipboard:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/MinSizeRel/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/clipboard


PostBuild.cursor.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/cursor
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/cursor:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/MinSizeRel/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/cursor


PostBuild.empty.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/empty.app/Contents/MacOS/empty
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/empty.app/Contents/MacOS/empty:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/MinSizeRel/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/empty.app/Contents/MacOS/empty


PostBuild.events.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/events
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/events:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/MinSizeRel/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/events


PostBuild.gamma.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/gamma
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/gamma:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/MinSizeRel/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/gamma


PostBuild.glfwinfo.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/glfwinfo
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/glfwinfo:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/MinSizeRel/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/glfwinfo


PostBuild.icon.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/icon.app/Contents/MacOS/icon
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/icon.app/Contents/MacOS/icon:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/MinSizeRel/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/icon.app/Contents/MacOS/icon


PostBuild.iconify.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/iconify
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/iconify:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/MinSizeRel/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/iconify


PostBuild.joysticks.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/joysticks
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/joysticks:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/MinSizeRel/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/joysticks


PostBuild.monitors.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/monitors
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/monitors:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/MinSizeRel/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/monitors


PostBuild.msaa.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/msaa
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/msaa:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/MinSizeRel/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/msaa


PostBuild.reopen.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/reopen
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/reopen:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/MinSizeRel/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/reopen


PostBuild.sharing.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/sharing.app/Contents/MacOS/sharing
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/sharing.app/Contents/MacOS/sharing:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/MinSizeRel/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/sharing.app/Contents/MacOS/sharing


PostBuild.tearing.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/tearing.app/Contents/MacOS/tearing
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/tearing.app/Contents/MacOS/tearing:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/MinSizeRel/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/tearing.app/Contents/MacOS/tearing


PostBuild.threads.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/threads.app/Contents/MacOS/threads
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/threads.app/Contents/MacOS/threads:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/MinSizeRel/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/threads.app/Contents/MacOS/threads


PostBuild.timeout.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/timeout.app/Contents/MacOS/timeout
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/timeout.app/Contents/MacOS/timeout:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/MinSizeRel/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/timeout.app/Contents/MacOS/timeout


PostBuild.title.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/title.app/Contents/MacOS/title
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/title.app/Contents/MacOS/title:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/MinSizeRel/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/title.app/Contents/MacOS/title


PostBuild.windows.MinSizeRel:
PostBuild.glfw.MinSizeRel: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/windows.app/Contents/MacOS/windows
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/windows.app/Contents/MacOS/windows:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/MinSizeRel/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/MinSizeRel/windows.app/Contents/MacOS/windows


PostBuild.glfw.RelWithDebInfo:
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/RelWithDebInfo/libglfw.dylib:
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/RelWithDebInfo/libglfw.dylib


PostBuild.boing.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/RelWithDebInfo/boing.app/Contents/MacOS/boing
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/RelWithDebInfo/boing.app/Contents/MacOS/boing:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/RelWithDebInfo/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/RelWithDebInfo/boing.app/Contents/MacOS/boing


PostBuild.gears.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/RelWithDebInfo/gears.app/Contents/MacOS/gears
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/RelWithDebInfo/gears.app/Contents/MacOS/gears:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/RelWithDebInfo/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/RelWithDebInfo/gears.app/Contents/MacOS/gears


PostBuild.heightmap.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/RelWithDebInfo/heightmap.app/Contents/MacOS/heightmap
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/RelWithDebInfo/heightmap.app/Contents/MacOS/heightmap:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/RelWithDebInfo/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/RelWithDebInfo/heightmap.app/Contents/MacOS/heightmap


PostBuild.particles.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/RelWithDebInfo/particles.app/Contents/MacOS/particles
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/RelWithDebInfo/particles.app/Contents/MacOS/particles:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/RelWithDebInfo/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/RelWithDebInfo/particles.app/Contents/MacOS/particles


PostBuild.simple.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/RelWithDebInfo/simple.app/Contents/MacOS/simple
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/RelWithDebInfo/simple.app/Contents/MacOS/simple:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/RelWithDebInfo/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/RelWithDebInfo/simple.app/Contents/MacOS/simple


PostBuild.splitview.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/RelWithDebInfo/splitview.app/Contents/MacOS/splitview
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/RelWithDebInfo/splitview.app/Contents/MacOS/splitview:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/RelWithDebInfo/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/RelWithDebInfo/splitview.app/Contents/MacOS/splitview


PostBuild.wave.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/RelWithDebInfo/wave.app/Contents/MacOS/wave
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/RelWithDebInfo/wave.app/Contents/MacOS/wave:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/RelWithDebInfo/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/examples/RelWithDebInfo/wave.app/Contents/MacOS/wave


PostBuild.clipboard.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/clipboard
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/clipboard:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/RelWithDebInfo/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/clipboard


PostBuild.cursor.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/cursor
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/cursor:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/RelWithDebInfo/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/cursor


PostBuild.empty.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/empty.app/Contents/MacOS/empty
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/empty.app/Contents/MacOS/empty:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/RelWithDebInfo/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/empty.app/Contents/MacOS/empty


PostBuild.events.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/events
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/events:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/RelWithDebInfo/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/events


PostBuild.gamma.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/gamma
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/gamma:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/RelWithDebInfo/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/gamma


PostBuild.glfwinfo.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/glfwinfo
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/glfwinfo:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/RelWithDebInfo/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/glfwinfo


PostBuild.icon.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/icon.app/Contents/MacOS/icon
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/icon.app/Contents/MacOS/icon:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/RelWithDebInfo/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/icon.app/Contents/MacOS/icon


PostBuild.iconify.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/iconify
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/iconify:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/RelWithDebInfo/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/iconify


PostBuild.joysticks.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/joysticks
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/joysticks:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/RelWithDebInfo/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/joysticks


PostBuild.monitors.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/monitors
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/monitors:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/RelWithDebInfo/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/monitors


PostBuild.msaa.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/msaa
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/msaa:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/RelWithDebInfo/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/msaa


PostBuild.reopen.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/reopen
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/reopen:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/RelWithDebInfo/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/reopen


PostBuild.sharing.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/sharing.app/Contents/MacOS/sharing
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/sharing.app/Contents/MacOS/sharing:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/RelWithDebInfo/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/sharing.app/Contents/MacOS/sharing


PostBuild.tearing.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/tearing.app/Contents/MacOS/tearing
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/tearing.app/Contents/MacOS/tearing:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/RelWithDebInfo/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/tearing.app/Contents/MacOS/tearing


PostBuild.threads.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/threads.app/Contents/MacOS/threads
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/threads.app/Contents/MacOS/threads:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/RelWithDebInfo/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/threads.app/Contents/MacOS/threads


PostBuild.timeout.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/timeout.app/Contents/MacOS/timeout
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/timeout.app/Contents/MacOS/timeout:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/RelWithDebInfo/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/timeout.app/Contents/MacOS/timeout


PostBuild.title.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/title.app/Contents/MacOS/title
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/title.app/Contents/MacOS/title:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/RelWithDebInfo/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/title.app/Contents/MacOS/title


PostBuild.windows.RelWithDebInfo:
PostBuild.glfw.RelWithDebInfo: /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/windows.app/Contents/MacOS/windows
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/windows.app/Contents/MacOS/windows:\
	/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/RelWithDebInfo/libglfw.3.2.dylib
	/bin/rm -f /Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/tests/RelWithDebInfo/windows.app/Contents/MacOS/windows




# For each target create a dummy ruleso the target does not have to exist
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Debug/libglfw.3.2.dylib:
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/MinSizeRel/libglfw.3.2.dylib:
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/RelWithDebInfo/libglfw.3.2.dylib:
/Users/yra/Desktop/c++\ projects/BaseOpenGl/glfw/build/src/Release/libglfw.3.2.dylib:
