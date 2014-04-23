call config.cmd

set name=%0

set def=%def% -a 3

set cc0=a123k
set cc1=a123keisr
set cc2=012345qwertasdzxcb
set cc3=012345QWERTASDZXCB

if exist %ff%.new exit 0
echo %name% %ff% start >> log.txt
goto start

:start

rem Dates
rem %def% -1 %cc0% %ff% ?a?a?a?1?1
%def% -1 %cc0% -2 ?l?d?u %ff% ?2?2?2?1?1
%def% -1 %cc0% -2 ?l?d?u %ff% ?2?2?2?1?1?1
rem %def% %ff% ?u?u?u?u?u?u?u
rem %def% %ff% ?u?u?u?u?u?u?u?u
rem %def% %ff% ?u?u?u?u?u?u?u?u?u

echo %name% %ff% done  >> log.txt
exit 0

:found
echo %ff% owned >> rez.txt
