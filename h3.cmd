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

%def7% %ff% ?d?d %dd%\lang\RuTrans.dic
%def7% %ff% ?d?d?d %dd%\lang\RuTrans.dic
%def7% %ff% ?d?d?d?d %dd%\lang\RuTrans.dic
%def7% %ff% ?d?d?d?d?d %dd%\lang\RuTrans.dic
%def7% %ff% ?d?d?d?d?d?d %dd%\lang\RuTrans.dic
%def7% %ff% ?d?d?d?d?d?d?d %dd%\lang\RuTrans.dic


echo %name% %ff% done  >> log.txt
exit 0

:found
echo %ff% owned >> rez.txt
