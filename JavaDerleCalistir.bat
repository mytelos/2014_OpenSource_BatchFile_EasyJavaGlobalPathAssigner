@ECHO OFF
title Java Derle Ve Calistir
:BAS
SET /P java=javanin adi:
SET "uzanti=.java"
SET "full=%java%%uzanti%"

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
ECHO %full% bulundu...
set path=%path%;C:\Program Files\java\jdk1.8.0_31\bin
ECHO Ortam degiskeni atandi
ECHO --------------------------
javac %full%
java %java%
pause > nul

