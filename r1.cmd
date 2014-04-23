call config.cmd

set name=%0

set def=%def% --rules-file 

if exist %ff%.new exit 0
echo %name% %ff% start >> log.txt
goto start

:start

set rr=%rr%\best64.rule
rem set rr=%rr%\lite.rule
rem set rr=%rr%\passwordspro.rule

rem %def% %rr% %ff% %dd%\aka.txt
rem %def% %rr% %ff% %dd%\lang\Polish.dic
%def% %rr% %ff% %dd%\mail\letters.txt

exit

for /f "delims=" %%a in ('dir /b/s "%dd%\inside\"') do (
%def% %rr% %ff% %%a
rem if %errorlevel%==0 goto found
)


exit

%def% %rr% %ff% %dd%\lang\all.dic
%def% %rr% %ff% %dd%\thematic\facebook.dic
%def% %rr% %ff% %dd%\john.txt
%def% %rr% %ff% %dd%\pass.txt
%def% %rr% %ff% %dd%\lang\English.dic
%def% %rr% %ff% %dd%\lang\Polish.dic
%def% %rr% %ff% %dd%\lang\Russian.dic

echo %name% %ff% done  >> log.txt
exit 0

:found
echo %ff% owned >> rez.txt
