<<<<<<< HEAD
set ss=?l?d
set ss1=?l?d?u
set l=8
set m6=?1?1?1?1?1?1
set m7=?1?1?1?1?1?1?1
set m8=?1?1?1?1?1?1?1?1
set m9=?1?1?1?1?1?1?1?1?1
set m10=?1?1?1?1?1?1?1?1?1?1
set stat=hashcat.hcstat
set pre=h

set m=%m10%

rem sp32.exe --combinations --threshold=6 --pw-min=%l% --pw-max=%l% %stat% -1 %ss% %m%

=======
set ss=?l?d
set ss1=?l?d?u
set l=8
set m6=?1?1?1?1?1?1
set m7=?1?1?1?1?1?1?1
set m8=?1?1?1?1?1?1?1?1
set m9=?1?1?1?1?1?1?1?1?1
set m10=?1?1?1?1?1?1?1?1?1?1
set stat=hashcat.hcstat
set pre=h

set m=%m10%

rem sp32.exe --combinations --threshold=6 --pw-min=%l% --pw-max=%l% %stat% -1 %ss% %m%

>>>>>>> e93e882c690dbf876415068b00949f6114bc81eb
sp32.exe --threshold=10 --pw-min=%l% --pw-max=%l% %stat% -1 %ss% %m% > %pre%%l%.txt