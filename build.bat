@ECHO OFF
    : Compiler

    powershell write-host -fore green Starting job...

    powershell write-host -fore red Compiling...

    cd ./src

    gcc main.c shell.c city.c windy.c -lwinmm -o BitCity

    move BitCity.exe ../

    move ./assets ../

    powershell write-host -fore green Compiled as 'BitCity.exe'

    echo Press any key to Exit...
    time 9999 > NUL

    EXIT /B 0
