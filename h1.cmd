@echo off

call config.cmd

set name=%0

set def7=%def% -a 7
set def6=%def% -a 6

set cc0=acdeilmnorstph
set cc1=01239acdeilmnorstp
set cc2=012345qwertasdzxcb
set cc3=012345QWERTASDZXCB
set cc4=1234567890qwertyuiopasdfghjklzxcvbnm-@=

if exist %ff%.new exit 0
echo %name% %ff% start >> log.txt
goto start

:start

rem %def7% %ff% -1 ?d?l?u ?1?1?1?1?1?1 %dd%\top.txt
%def7% %ff% -1 %cc4% -2 ?l?u ?2?1?1?1 %dd%\topplus.txt
%def7% %ff% -1 %cc4% -2 ?l?u ?2?1?1?1?1 %dd%\topplus.txt
%def7% %ff% -1 %cc4% -2 ?l?u ?2?1?1?1?1?1 %dd%\topplus.txt

exit

%def6% %ff% -1 ?d?l?u %dd%\letters.txt ?1
%def6% %ff% -1 ?d?l?u %dd%\letters.txt ?1?1
%def6% %ff% -1 ?d?l?u %dd%\letters.txt ?1?1?1

%def7% %ff% -1 ?d?l?u ?1 %dd%\letters.txt
%def7% %ff% -1 ?d?l?u ?1?1 %dd%\letters.txt
%def7% %ff% -1 ?d?l?u ?1?1?1 %dd%\letters.txt


exit

rem %def7% %ff% -1 ?d?l?u ?1?1 %dd%\top.txt
rem %def6% %ff% -1 ?d?l?u %dd%\top.txt ?1?1
rem %def7% %ff% -1 ?d?l?u ?1?1 %dd%\relevant.txt
rem %def6% %ff% -1 ?d?l?u %dd%\relevant.txt ?1?1
rem %def6% %ff% -1 ?d?l?u %dd%\relevant.txt ?1?1
rem %def7% -t 32 %ff% -1 %cc0% ?1?1?1 %dd%\top.txt
%def7% -t 32 %ff% -1 %cc1% ?1?1?1 %dd%\top.txt
%def7% -t 32 %ff% -1 %cc2% ?1?1?1 %dd%\top.txt
%def6% %ff% -1 ?d?l?u %dd%\top.txt ?1?1
%def6% %ff% -1 ?d?l?u %dd%\top.txt ?1?1?1

echo %name% %ff% done  >> log.txt
exit 0

:found
echo %ff% owned >> rez.txt
