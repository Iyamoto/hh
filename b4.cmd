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

rem %def% %ff% ?d?d?d?d?d?d?d?d
rem %def% %ff% ?d?d?d?d?d?d?d?d?d
rem %def% %ff% ?d?d?d?d?d?d?d?d?d?d
rem %def% %ff% ?d?d?d?d?d?d?d?d?d?d?d
rem %def% %ff% ?d?d?d?d?d?d?d?d?d?d?d?d?d

%def% -1 %cc1% %ff% ?1?1?1?1?1?1?1?1?1?1
%def% -1 %cc2% %ff% ?1?1?1?1?1?1?1?1?1?1
%def% -1 %cc3% %ff% ?1?1?1?1?1?1?1?1?1?1

echo %name% %ff% done  >> log.txt
exit 0

:found
echo %ff% owned >> rez.txt