call config.cmd

set name=%0

set def=%def% -a 1

set cc0=acdeilmnorstph
set cc1=01239acdeilmnorstp
set cc2=012345qwertasdzxcb
set cc3=012345QWERTASDZXCB

if exist %ff%.new exit 0
echo %name% %ff% start >> log.txt
goto start

:start

%def% %ff% %dd%\relevant.txt %dd%\relevant.txt

echo %name% %ff% done  >> log.txt
exit 0

:found
echo %ff% owned >> rez.txt
