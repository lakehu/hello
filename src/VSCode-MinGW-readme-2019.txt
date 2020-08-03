launch.json  // for MinGW/GDB/Win32 debug only

for MinGW/GCC/Win32, refer to tasks.json and ##################c_cpp_properties.json

   {
    // Use IntelliSense to learn about possible attributes.
    // Hover to view descriptions of existing attributes.
    // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
    "version": "0.2.0",
    "configurations": [
        {
            "name": "(gdb) Launch",
            "type": "cppdbg",
            "request": "launch",
	     /// Manually win32/gcc -ggdb Hello.c to generate a.exe
            "program": "${workspaceFolder}/a.exe",
            "args": [],
            "stopAtEntry": false,
            "cwd": "${workspaceFolder}",
	     /// important to set MinGW DLL in Windows PATH	
            "environment": [
                {
                    "name": "PATH",
                    "value": "%PATH%;C:\\MinGW\\gdb32\\bin;C:\\MinGW\\mingw32\\bin;C:\\MinGW\\usr\\bin;C:\\MinGW\\mingw32\\bin"
                }
            ],
            "externalConsole": true,
            "MIMode": "gdb",
	    /// Set GDB 
            "miDebuggerPath": "C:\\MinGW\\gdb32\\bin\\gdb32.exe",
            "setupCommands": [
                {
                    "description": "Enable pretty-printing for gdb",
                    "text": "-enable-pretty-printing",
                    "ignoreFailures": true
                }
            ]
        }
    ]
}










=thread-group-added,id="i1"
GNU gdb (GDB) 7.9.1
Copyright (C) 2015 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.  Type "show copying"
and "show warranty" for details.
This GDB was configured as "mingw32".
Type "show configuration" for configuration details.
For bug reporting instructions, please see:
<http://www.gnu.org/software/gdb/bugs/>.
Find the GDB manual and other documentation resources online at:
<http://www.gnu.org/software/gdb/documentation/>.
For help, type "help".
Type "apropos word" to search for commands related to "word".
Warning: Debuggee TargetArchitecture not detected, assuming x86_64.
=cmd-param-changed,param="pagination",value="off"
[New Thread 11216.0x4504]
[New Thread 11216.0x1340]
[New Thread 11216.0x4b00]
[New Thread 11216.0x513c]
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\privman32.dll",target-name="C:\\WINDOWS\\SysWOW64\\privman32.dll",host-name="C:\\WINDOWS\\SysWOW64\\privman32.dll",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\user32.dll",target-name="C:\\WINDOWS\\SysWOW64\\user32.dll",host-name="C:\\WINDOWS\\SysWOW64\\user32.dll",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\win32u.dll",target-name="C:\\WINDOWS\\SysWOW64\\win32u.dll",host-name="C:\\WINDOWS\\SysWOW64\\win32u.dll",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\gdi32.dll",target-name="C:\\WINDOWS\\SysWOW64\\gdi32.dll",host-name="C:\\WINDOWS\\SysWOW64\\gdi32.dll",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\gdi32full.dll",target-name="C:\\WINDOWS\\SysWOW64\\gdi32full.dll",host-name="C:\\WINDOWS\\SysWOW64\\gdi32full.dll",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\msvcp_win.dll",target-name="C:\\WINDOWS\\SysWOW64\\msvcp_win.dll",host-name="C:\\WINDOWS\\SysWOW64\\msvcp_win.dll",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\ucrtbase.dll",target-name="C:\\WINDOWS\\SysWOW64\\ucrtbase.dll",host-name="C:\\WINDOWS\\SysWOW64\\ucrtbase.dll",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\shell32.dll",target-name="C:\\WINDOWS\\SysWOW64\\shell32.dll",host-name="C:\\WINDOWS\\SysWOW64\\shell32.dll",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\cfgmgr32.dll",target-name="C:\\WINDOWS\\SysWOW64\\cfgmgr32.dll",host-name="C:\\WINDOWS\\SysWOW64\\cfgmgr32.dll",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\SHCore.dll",target-name="C:\\WINDOWS\\SysWOW64\\SHCore.dll",host-name="C:\\WINDOWS\\SysWOW64\\SHCore.dll",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\combase.dll",target-name="C:\\WINDOWS\\SysWOW64\\combase.dll",host-name="C:\\WINDOWS\\SysWOW64\\combase.dll",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\windows.storage.dll",target-name="C:\\WINDOWS\\SysWOW64\\windows.storage.dll",host-name="C:\\WINDOWS\\SysWOW64\\windows.storage.dll",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\shlwapi.dll",target-name="C:\\WINDOWS\\SysWOW64\\shlwapi.dll",host-name="C:\\WINDOWS\\SysWOW64\\shlwapi.dll",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\kernel.appcore.dll",target-name="C:\\WINDOWS\\SysWOW64\\kernel.appcore.dll",host-name="C:\\WINDOWS\\SysWOW64\\kernel.appcore.dll",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\powrprof.dll",target-name="C:\\WINDOWS\\SysWOW64\\powrprof.dll",host-name="C:\\WINDOWS\\SysWOW64\\powrprof.dll",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\profapi.dll",target-name="C:\\WINDOWS\\SysWOW64\\profapi.dll",host-name="C:\\WINDOWS\\SysWOW64\\profapi.dll",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\ole32.dll",target-name="C:\\WINDOWS\\SysWOW64\\ole32.dll",host-name="C:\\WINDOWS\\SysWOW64\\ole32.dll",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\imm32.dll",target-name="C:\\WINDOWS\\SysWOW64\\imm32.dll",host-name="C:\\WINDOWS\\SysWOW64\\imm32.dll",thread-group="i1"
[New Thread 11216.0x4418]
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\netapi32.dll",target-name="C:\\WINDOWS\\SysWOW64\\netapi32.dll",host-name="C:\\WINDOWS\\SysWOW64\\netapi32.dll",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\logoncli.dll",target-name="C:\\WINDOWS\\SysWOW64\\logoncli.dll",host-name="C:\\WINDOWS\\SysWOW64\\logoncli.dll",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\netutils.dll",target-name="C:\\WINDOWS\\SysWOW64\\netutils.dll",host-name="C:\\WINDOWS\\SysWOW64\\netutils.dll",thread-group="i1"
[New Thread 11216.0x4c44]
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\Wldap32.dll",target-name="C:\\WINDOWS\\SysWOW64\\Wldap32.dll",host-name="C:\\WINDOWS\\SysWOW64\\Wldap32.dll",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\ws2_32.dll",target-name="C:\\WINDOWS\\SysWOW64\\ws2_32.dll",host-name="C:\\WINDOWS\\SysWOW64\\ws2_32.dll",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\mswsock.dll",target-name="C:\\WINDOWS\\SysWOW64\\mswsock.dll",host-name="C:\\WINDOWS\\SysWOW64\\mswsock.dll",thread-group="i1"
[New Thread 11216.0x4180]
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\dsparse.dll",target-name="C:\\WINDOWS\\SysWOW64\\dsparse.dll",host-name="C:\\WINDOWS\\SysWOW64\\dsparse.dll",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\kerberos.dll",target-name="C:\\WINDOWS\\SysWOW64\\kerberos.dll",host-name="C:\\WINDOWS\\SysWOW64\\kerberos.dll",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\msasn1.dll",target-name="C:\\WINDOWS\\SysWOW64\\msasn1.dll",host-name="C:\\WINDOWS\\SysWOW64\\msasn1.dll",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\cryptdll.dll",target-name="C:\\WINDOWS\\SysWOW64\\cryptdll.dll",host-name="C:\\WINDOWS\\SysWOW64\\cryptdll.dll",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\bcrypt.dll",target-name="C:\\WINDOWS\\SysWOW64\\bcrypt.dll",host-name="C:\\WINDOWS\\SysWOW64\\bcrypt.dll",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\wshqos.dll",target-name="C:\\WINDOWS\\SysWOW64\\wshqos.dll",host-name="C:\\WINDOWS\\SysWOW64\\wshqos.dll",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\WSHTCPIP.DLL",target-name="C:\\WINDOWS\\SysWOW64\\WSHTCPIP.DLL",host-name="C:\\WINDOWS\\SysWOW64\\WSHTCPIP.DLL",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\wship6.dll",target-name="C:\\WINDOWS\\SysWOW64\\wship6.dll",host-name="C:\\WINDOWS\\SysWOW64\\wship6.dll",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\dnsapi.dll",target-name="C:\\WINDOWS\\SysWOW64\\dnsapi.dll",host-name="C:\\WINDOWS\\SysWOW64\\dnsapi.dll",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\nsi.dll",target-name="C:\\WINDOWS\\SysWOW64\\nsi.dll",host-name="C:\\WINDOWS\\SysWOW64\\nsi.dll",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\IPHLPAPI.DLL",target-name="C:\\WINDOWS\\SysWOW64\\IPHLPAPI.DLL",host-name="C:\\WINDOWS\\SysWOW64\\IPHLPAPI.DLL",thread-group="i1"
=library-unloaded,id="C:\\Program Files (x86)\\Bonjour\\mdnsNSP.dll",target-name="C:\\Program Files (x86)\\Bonjour\\mdnsNSP.dll",host-name="C:\\Program Files (x86)\\Bonjour\\mdnsNSP.dll",thread-group="i1"
=library-unloaded,id="C:\\Windows\\SysWOW64\\rasadhlp.dll",target-name="C:\\Windows\\SysWOW64\\rasadhlp.dll",host-name="C:\\Windows\\SysWOW64\\rasadhlp.dll",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\FWPUCLNT.DLL",target-name="C:\\WINDOWS\\SysWOW64\\FWPUCLNT.DLL",host-name="C:\\WINDOWS\\SysWOW64\\FWPUCLNT.DLL",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\samcli.dll",target-name="C:\\WINDOWS\\SysWOW64\\samcli.dll",host-name="C:\\WINDOWS\\SysWOW64\\samcli.dll",thread-group="i1"
=library-unloaded,id="C:\\WINDOWS\\SysWOW64\\samlib.dll",target-name="C:\\WINDOWS\\SysWOW64\\samlib.dll",host-name="C:\\WINDOWS\\SysWOW64\\samlib.dll",thread-group="i1"

Breakpoint 1, main () at Hello.c:6
6	    printf("Hello world!\n");
gdb: unknown target exception 0xc0000008 at 0x3333e7a

Program received signal ?, Unknown signal.
0x77b9f6fc in ntdll!ZwClose () from C:\WINDOWS\SYSTEM32\ntdll.dll
Execute debugger commands using "-exec <command>", for example "-exec info registers" will list registers in use (when GDB is the debugger)


[New Thread 11216.0x4c20]
[Thread 11216.0x4c44 exited with code 3221225480]
[Thread 11216.0x513c exited with code 3221225480]
[Thread 11216.0x4b00 exited with code 3221225480]
[Thread 11216.0x1340 exited with code 3221225480]
[Thread 11216.0x4418 exited with code 3221225480]
[Thread 11216.0x4180 exited with code 3221225480]
[Inferior 1 (process 11216) exited with code 030000000010]
The program 'C:\Lake\CrossPlatform\CodeBlocks\Hello\src\a.exe' has exited with code 0 (0x00000000).



=thread-group-added,id="i1"
GNU gdb (GDB) 7.9.1
Copyright (C) 2015 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.  Type "show copying"
and "show warranty" for details.
This GDB was configured as "mingw32".
Type "show configuration" for configuration details.
For bug reporting instructions, please see:
<http://www.gnu.org/software/gdb/bugs/>.
Find the GDB manual and other documentation resources online at:
<http://www.gnu.org/software/gdb/documentation/>.
For help, type "help".
Type "apropos word" to search for commands related to "word".
=cmd-param-changed,param="pagination",value="off"
[New Thread 17764.0x3a7c]
[New Thread 17764.0x1008]
[New Thread 17764.0x1888] 
Loaded 'C:\WINDOWS\SysWOW64\samlib.dll'. Symbols loaded.
Execute debugger commands using "-exec <command>", for example "-exec info registers" will list registers in use (when GDB is the debugger)
-exec info registers  ################## GDB command input into "Debug Console"/VSCode##################
eax            0xa	10
ecx            0x401730	4200240
edx            0x61241890	1629755536
ebx            0x62cc1c	6474780
esp            0x62cbe0	0x62cbe0
ebp            0x62cbf8	0x62cbf8
esi            0x20050e13	537202195
edi            0x0	0
eip            0x40119a	0x40119a <main+26>
eflags         0x247	[ CF PF ZF IF ]
cs             0x23	35
ss             0x2b	43
ds             0x2b	43
es             0x2b	43
fs             0x53	83
gs             0x2b	43
-exec  list
2	#include <stdlib.h>

3	

4	int main()

5	{

6	    printf("Hello world!\n");

7	    return 0;

8	}




Windows Set 



ALLUSERSPROFILE=C:\ProgramData
CommonProgramFiles=C:\Program Files\Common Files
CommonProgramFiles(x86)=C:\Program Files (x86)\Common Files
CommonProgramW6432=C:\Program Files\Common Files
COMPILER_PATH="C:\MinGW\usr\lib\gcc\i686-pc-msys\7.3.0;C:\MinGW\usr\lib\gcc\i686-pc-msys;C:\MinGW\usr\lib\gcc"
COMPUTERNAME=M5273296
ComSpec=C:\WINDOWS\system32\cmd.exe
CYGWIN=mintty
FPS_BROWSER_APP_PROFILE_STRING=Internet Explorer
FPS_BROWSER_USER_PROFILE_STRING=Default
HOMEDRIVE=C:
LIBRARY_PATH="C:\MinGW\usr\lib\gcc\i686-pc-msys\7.3.0;C:\MinGW\usr\lib\gcc\i686-pc-msys\7.3.0\..\..\..\..\i686-pc-ms
NUMBER_OF_PROCESSORS=8
OS=Windows_NT
Path=C:\Perl\bin;C:\Program Files\Common Files\Microsoft Shared\Microsoft Online Services;C:\Program Files (x86)\Common Files\Microsoft Shared\Microsoft Online Services;C:\ProgramData\Oracle\Java\javapath;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\Program Files\1E\NomadBranch\;C:\Program Files (x86)\Git\cmd;C:\Program Files\Microsoft SQL Server\110\Tools\Binn\;C:\Program Files (x86)\Windows Kits\8.1\Windows Performance Toolkit\;C:\Program Files\OpenSSH\bin;C:\MinGW\gdb32\bin;C:\MinGW\mingw32\bin;C:\MinGW\usr\bin;C:\MinGW\mingw32\bin;C:\MinGW\gdb32\bin;C:\MinGW\mingw32\bin;C:\MinGW\usr\bin;C:\MinGW\mingw32\bin
PATHEXT=.COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC
PROCESSOR_ARCHITECTURE=AMD64
PROCESSOR_IDENTIFIER=Intel64 Family 6 Model 142 Stepping 10, GenuineIntel
PROCESSOR_LEVEL=6
PROCESSOR_REVISION=8e0a
ProgramData=C:\ProgramData
ProgramFiles=C:\Program Files
ProgramFiles(x86)=C:\Program Files (x86)
ProgramW6432=C:\Program Files
PROMPT=$P$G
PSModulePath=C:\Program Files\WindowsPowerShell\Modules;C:\WINDOWS\system32\WindowsPowerShell\v1.0\Modules;C:\Program Files (x86)\Microsoft Azure Information Protection\Powershell
PUBLIC=C:\Users\Public
SESSIONNAME=Console
SystemDrive=C:
SystemRoot=C:\WINDOWS
VS120COMNTOOLS=C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\Tools\
windir=C:\WINDOWS
