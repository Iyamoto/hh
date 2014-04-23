call config.cmd

set name=%0

set def=%def% -a 3

set cc0=acdeilmnorstph
set cc1=01239acdeilmnorstp
set cc2=123450qwertasdzxcb
set cc3=123450QWERTASDZXCB

if exist %ff%.new exit 0
echo %name% %ff% start >> log.txt
goto start2

:start

%def% %ff% ?a
%def% %ff% ?a?a
%def% %ff% ?a?a?a

%def% -1 ?l?d?u %ff% ?1?1?1?1

goto start1

%def% -1 %char%\standard\Russian\ru_cp1251.hcchr %ff% ?1 
%def% -1 %char%\standard\Russian\ru_cp1251.hcchr %ff% ?1?1
%def% -1 %char%\standard\Russian\ru_cp1251.hcchr %ff% ?1?1?1
%def% -1 %char%\standard\Russian\ru_cp1251.hcchr %ff% ?1?1?1?1
%def% -1 %char%\standard\Russian\ru_cp1251.hcchr %ff% ?1?1?1?1?1

:start1

%def% %ff% ?d?d?d?d?d
%def% %ff% ?d?d?d?d?d?d
%def% %ff% ?d?d?d?d?d?d?d

:start2

%def% -1 %cc0% %ff% ?1?1?1?1?1
%def% -1 %cc0% %ff% ?1?1?1?1?1?1

%def% -1 %cc2% %ff% ?1?1?1?1?1
%def% -1 %cc2% %ff% ?1?1?1?1?1?1

%def% -1 %cc3% %ff% ?1?1?1?1?1
%def% -1 %cc3% %ff% ?1?1?1?1?1?1

echo %name% %ff% done  >> log.txt
exit 0

:found
echo %ff% owned >> rez.txt
