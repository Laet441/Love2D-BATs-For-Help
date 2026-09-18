[English] :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Compiling a Love2D project for Windows OS
:: Written by laet in 2026

:: All you need to compile is:
:: 1) Place this file in your project folder
:: 2) Create a folder named "Project"
:: 3) Copy all your project files
:: 4) Place them in the created "Project" folder

:: When you run this file, a "Build" folder will be created, within which another "Windows" folder
::     will be created, which will contain your compiled program.

:: To change the path to the Love2D executable, the name of the "Project" folder, or the names of
::     the folders for the compiled program, edit the variables in this file.

[Русский] :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Компиляция Love2D проекта для ОС Windows
:: Написал laet в 2026

:: Всё что вам нужно для компиляции - это:
:: 1) Поместить данный файл в папку с вашим проектом
:: 2) Создать папку с именем "Project"
:: 3) Скопировать все файлы вашего проекта
:: 4) Поместить их в созданную папку "Project"

:: При запуске данного файла, создастся папка "Build", внутри которой будет создана ещё одна папка
::     "Windows", в которой будет лежать ваша скомпилируемая программа.

:: Для того чтобы изменить путь к исполняемому файлу Love2D или название для папки "Project" или же
::     название папок для компилируемой программы, редактируйте переменные в данном файле.

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::



set LOVE_PATH=C:\Program Files\LOVE
set BUILD_PATH=Build\Windows
set PROJECT_FOLDER_NAME=Project

mkdir %BUILD_PATH%
cd %PROJECT_FOLDER_NAME%
tar --format=zip -a -c -f ..\game.love *
cd ..
copy /b "%LOVE_PATH%\love.exe"+game.love %BUILD_PATH%\game.exe
copy "%LOVE_PATH%\*.dll" %BUILD_PATH%\
del game.love
