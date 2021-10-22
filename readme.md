
202110
1. Debug with Windbg, build with vc6


20201015
1. Cmake try 
 cmake-3.5.2-win32-x86\bin\cmake.exe  -G  "NMake Makefiles"  . 
   


Instroduce:

This project is used to demo vscode debug both locally win/X86 and remotely by RemoteSSH with code/insder version.


Refer to  https://code.visualstudio.com/docs/cpp/config-msvc

For build,  Ctrl + Shit + B to select build VS2019 or MinGW.

Select VSCode/Left/Run icon to debug through MinGWGDB or VS2019


Prefer run VS Code from VCVars32.bat environment 

C:\work\Develop\Hello2020>"c:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvar
s32.bat"
C:\work\Develop\Hello2020>"\work\VSCode-win32-x64-1.49.0-insider\Code - Insiders.exe"
launch.json  // for MinGW/GDB/Win32 debug only

for MinGW/GCC/Win32, refer to tasks.json and ##################c_cpp_properties.json

