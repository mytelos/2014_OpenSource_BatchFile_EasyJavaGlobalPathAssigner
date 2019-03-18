@ECHO OFF
ECHO.
ECHO.
ECHO                          `.-:/+oossssssoo+/:-.`              
ECHO                    `.:osyyso+/::---..---::/+osyyso:.`        
ECHO                 `:oyso/+oys-...../y//y/.....-syo+/osyo:`     
ECHO               .oho/+ydmNNN:......oNNNNo......-NNNmdy+/oho.   
ECHO              +h+/ymNNNNNNNo-...-/dNNNNd/-...-+NNNNNNNmy/+h+` 
ECHO             od:omNNNNNNNNNmdysyhmNNNNNNmhysydmNNNNNNNNNmo:hs 
ECHO            .m/:mNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNm:/m.
ECHO            .m+:mNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNm:/m.
ECHO             od:+mNNNNmhyyhmNNdhhdmNNNNNdhhdNNmhyyhmNNNNmo:do 
ECHO              +ho/smNNy-..-:os-..-+dNNm+-..-oo:-..-yNNmy/+h+  
ECHO               .oys++yh:...........:dd:...........:hy++syo.   
ECHO                 `:oyyo/-...........::...........-/oyyo:`     
ECHO                     `:+syyso+//::------:://+osyys+:`         
ECHO                           `-://+oooooooo+//:-`             
ECHO.

ECHO                       JAR CALISTIRICI HAYAT KURTARIR                     
title KOC
ECHO.
ECHO                             Bir tusa basin...
pause > nul
cls
:BAS
ECHO[
SET /P jar=jar dosyasinin adini girin:
SET "uzanti=.jar"
SET "full=%jar%%uzanti%"

if EXIST %full% (
GOTO derle
)

if NOT EXIST %full% (
ECHO %full% dosyasi bulunamadi, dosya konumunu ve adini kontrol edin
pause
GOTO BAS
)

:derle
cls
ECHO %full% bulundu

set path=%path%;C:\Program Files\Java\jre1.8.0_31\bin
ECHO Windows Ortam Degiskeni yolu atandi

ECHO %full% calistiriliyor...
ECHO --------------------------------
java -jar %full%
pause > nul

