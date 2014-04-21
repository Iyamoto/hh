call config.cmd

set name=%0

set def=%def%

if exist %ff%.new exit 0
echo %name% %ff% start >> log.txt
goto start

:start

rem %def% %ff% %dd%\thematic\Facebook.dic

rem %def% %ff% %dd%\812u.txt

%def% %ff% %dd%\ru.txt

rem %def% %ff% %dd%\nice-8.txt
rem %def% %ff% %dd%\nice-9.txt
rem %def% %ff% %dd%\nice-12.txt

exit

for /f "delims=" %%a in ('dir /b/s "%dd%\inside\"') do (
%def% %ff% %%a
rem if %errorlevel%==0 goto found
)


echo %name% %ff% done  >> log.txt
exit 0

:found
echo %ff% owned >> rez.txt
