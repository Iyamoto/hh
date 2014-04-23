call config.cmd

set name=%0

set def=%def%

if exist %ff%.new exit 0
echo %name% %ff% start >> log.txt
goto start

:start

rem %def% %ff% %dd%\thematic\Facebook.dic

rem %def% %ff% %dd%\812u.txt

rem %def% %ff% %dd%\ru.txt

rem %def% %ff% %dd%\users.txt

rem %def% %ff% %dd%\aka.txt

%def% %ff% %dd%\mail\emails.txt

exit

for /f "delims=" %%a in ('dir /b/s "%dd%\lem\"') do (
%def% %ff% %%a
)


exit

%def% %ff% %dd%\stats\h6.txt
%def% %ff% %dd%\stats\h7.txt
%def% %ff% %dd%\stats\h8.txt
%def% %ff% %dd%\stats\h9.txt

exit

%def% %ff% %dd%\stats\s6.txt
%def% %ff% %dd%\stats\s7.txt
%def% %ff% %dd%\stats\s8.txt
%def% %ff% %dd%\stats\s9.txt
%def% %ff% %dd%\stats\s10.txt


rem %def% %ff% %dd%\nice-8.txt
rem %def% %ff% %dd%\nice-9.txt
rem %def% %ff% %dd%\nice-12.txt

exit

for /f "delims=" %%a in ('dir /b/s "%dd%\inside\"') do (
%def% %ff% %%a
)


echo %name% %ff% done  >> log.txt
exit 0

:found
echo %ff% owned >> rez.txt
