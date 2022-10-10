## Jonathan Levin's filemon

The original can be found at [http://newosxbook.com/ios](http://newosxbook.com/ios/ios.html)

The key difference between this and what you find on his website is that this compiles. In addition, I've added a CMake file, but more importantly a toolchain file that will allow you to compile this for macOS and iOS.

### Compilation with CMake

    mkdir build
    cd build
    cmake \
        -D CMAKE_TOOLCHAIN_FILE=../macos-toolchain.cmake \
        -D CMAKE_VERBOSE_MAKEFILE=on \
        ..
    cmake --build .

### Usage

    ./filemon -h 

    Usage: filemon [options]
    Where [options] are optional, and may be any of:
	-p|--proc  pid/procname:  filter only this process or PID
	-f|--file  string[,string]:        filter only paths containing this string (/ will catch everything)
	-e|--event event[,event]: filter only these events
	-s|--stop:                auto-stop the process generating event
	-l|--link:                auto-create a hard link to file (prevents deletion by program :-)
	-c|--color (or set JCOLOR=1 first)
	This is J's filemon, compiled on Oct 10 2022
