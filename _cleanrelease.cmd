@echo off delete exe and xml docs
del *.exe /s  
del *.scr /s
del *.xml /s

@echo off delete delphi units but not packages
rem del *.bpl /s
rem del *.dcp /s
del *.dcu /s
del *.bak /s

@echo off not delete C++ includes and libs
rem del *.hpp /s
rem del *.bpi /s
rem del *.lib /s
rem del *.a /s

@echo off delete debug files
del *.ddp /s
del *.ppu /s
del *.o /s
del *.~* /s
del *.log /s
del *.dsk /s
del *.dof /s
del *.bk? /s
del *.mps /s
del *.rst /s
del *.s /s
del *.map /s
del *.drc /s
del *.local /s

@echo off delete more rad studio files

del *.identcache /s
del *.otares /s
del *.tvsconfig /s
del *.stat /s
del *.db /s

@echo off delete more cpp builder files

del *.#00 /s
del *.pch /s
del *.tds /s
del *.ilc /s
del *.ild /s
del *.ilf /s
del *.ils /s
del *.pdi /s
del *.vlb /s

echo ************************************************
echo             Don't delete some files
echo ************************************************

attrib +R "AdvDemos/Q3Demo/Model/animation.cfg"
rem del *.cfg /s - there are quake's animations
attrib -R "AdvDemos/Q3Demo/Model/animation.cfg"

rem del *.res /s  - some apps load/save resources in RES files
rem del *.ico /s  - some projects have own icos
rem del *.cur /s  - cursors
rem del *.obj /s  - obj models in assets or resources for lazarus

echo---------------------------------------------------------

echo delete all .svn directories with subdirectories and files 
for /r %1 %%R in (.svn) do if exist "%%R" (rd /s /q "%%R")
echo delete all .git directories with subdirectories and files 
for /r %1 %%R in (.git) do if exist "%%R" (rd /s /q "%%R")

echo---------------------------------------------------------

echo delete debug and Platform directories with all subdirectories and files 
rem    for /r %1 %%R in (Win32) do if exist "%%R" (rd /s /q "%%R")
rem    for /r %1 %%R in (Win64) do if exist "%%R" (rd /s /q "%%R")
for /r %1 %%R in (Debug_Build) do if exist "%%R" (rd /s /q "%%R")
for /r %1 %%R in (Debug) do if exist "%%R" (rd /s /q "%%R")
for /r %1 %%R in (Release_Build) do if exist "%%R" (rd /s /q "%%R")
for /r %1 %%R in (Release) do if exist "%%R" (rd /s /q "%%R")
for /r %1 %%R in (__history) do if exist "%%R" (rd /s /q "%%R")
for /r %1 %%R in (__recovery) do if exist "%%R" (rd /s /q "%%R")
for /r %1 %%R in (__astcache) do if exist "%%R" (rd /s /q "%%R")
