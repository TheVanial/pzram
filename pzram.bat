@echo off
@setlocal enebleextension
@cd /d "%~dp0"

rem === создано _TheVanial_ ===

set _JAVA_OPTIONS=
set JVM_OPTS=-Xms6G -Xmx6G
rem === что-бы изменить кол-во используемой ОЗУ игрой нужно изменить вот эти параметры ===
rem === "-Xms'число'G" — это минимум который игра будет использывать "-Xmx'число'G" — это максимум===
set JVM_OPTS=%JVM_OPTS% -XX:+UseParallelGC
set JVM_OPTS=%JVM_OPTS% -XX:ParallelGCThreads=6
set JVM_OPTS=%JVM_OPTS% -XX:ActiveProcessorCount=6

set JVM_OPTS=%JVM_OPTS% -XX:-CreateCoredumpOnCrash
set JVM_OPTS=%JVM_OPTS% -XX:-OmitStackTraceInFastThrow

call ".\ProjectZomboid64.exe" %JVM_OPTS%

pause