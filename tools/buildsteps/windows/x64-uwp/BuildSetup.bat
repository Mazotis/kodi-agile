@ECHO OFF

SET cmakeGenerator=Visual Studio 14 Win64
SET TARGET_ARCHITECTURE=x64

rem set Visual C++ build environment for binary addons
call "%VS140COMNTOOLS%..\..\VC\vcvarsall.bat" amd64 store 10.0.14393.0

SET cmakeProps=-DCMAKE_SYSTEM_NAME=WindowsStore -DCMAKE_SYSTEM_VERSION=%UCRTVersion%
PUSHD %~dp0\..
CALL BuildSetup.bat %*
POPD
