call config.cmd

set name=%0

set def=%def% -a 3

set cc0=acdeilmnorstph
set cc1=01239acdeilmnorstp
set cc2=012345qwertasdzxcb
set cc3=012345QWERTASDZXCB

if exist %ff%.new exit 0
echo %name% %ff% start >> log.txt
goto start

:start

rem Dates
%def% %ff% ?u?u?u?u?u
%def% %ff% ?u?u?u?u?u?u
%def% %ff% ?u?u?u?u?u?u?u
%def% %ff% ?u?u?u?u?u?u?u?u
%def% %ff% ?u?u?u?u?u?u?u?u?u

echo %name% %ff% done  >> log.txt
exit 0

:found
echo %ff% owned >> rez.txt
