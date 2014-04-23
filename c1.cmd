@echo off

call config.cmd

set name=%0

set def1=%def% -a 1
set def7=%def% -a 7
set def6=%def% -a 6

set cc0=acdeilmnorstph
set cc1=01239acdeilmnorstp
set cc2=012345qwertasdzxcb
set cc3=012345QWERTASDZXCB

if exist %ff%.new exit 0
echo %name% %ff% start >> log.txt
goto start

:start

rem %def1% %ff% %dd%\set3.txt %dd%\set3.txt
rem %def1% %ff% %dd%\top.txt %dd%\top.txt
rem %def1% %ff% %dd%\relevant.txt %dd%\relevant.txt
rem %def1% %ff% %dd%\relevant.txt %dd%\top.txt
%def1% %ff% %dd%\letters.txt %dd%\top.txt

:start1

rem %def1% %ff% %dd%\c\2\02 %dd%\top.txt
rem %def1% %ff% %dd%\c\2\03 %dd%\top.txt
rem %def1% %ff% %dd%\c\2\04 %dd%\top.txt
rem %def1% %ff% %dd%\c\2\05 %dd%\top.txt
rem %def1% %ff% %dd%\c\2\06 %dd%\top.txt
rem %def1% %ff% %dd%\c\2\07 %dd%\top.txt
rem %def1% %ff% %dd%\c\2\08 %dd%\top.txt
rem %def1% %ff% %dd%\c\2\02 %dd%\relevant.txt

echo %name% %ff% done  >> log.txt
exit 0

:found
echo %ff% owned >> rez.txt
