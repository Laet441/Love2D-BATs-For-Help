:: [English] ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Running a Love2D project on Windows OS
:: Written by laet in 2026

:: If you're not familiar with my batch files, I recommend following the steps below the first time:
:: 1. Place this batch file in your project folder
:: 2. Create a folder named "Project"
:: 3. Copy all your project files
:: 4. Place them in the newly created "Project" folder

:: To open your project as an executable file, simply run this batch file.
:: This batch file enables the Love2D console.

:: [Русский] ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Запуск Love2D проекта для ОС Windows
:: Написал laet в 2026

:: Если вы не ознакомлены с моими батниками, советую в первый раз выполнить несколько шагов ниже:
:: 1. Поместите данный батник в папку с вашим проектом
:: 2. Создайте папку с именем "Project"
:: 3. Скопируйте все файлы вашего проекта
:: 4. Поместите их в созданную папку "Project"

:: Для того чтобы открыть ваш проект как исполняемый файл, достаточно запустить данный батник.
:: Данный батник обеспечивает работу с консолью Love2D.

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

@echo off

set LOVE_PATH=C:\Program Files\LOVE
set PROJECT_FOLDER_NAME=Project

if not exist "%LOVE_PATH%" (
    echo Could not find LOVE folder in path "%LOVE_PATH%"
    pause
    goto :eof
)
if not exist "%LOVE_PATH%\love.exe" (
    echo Could not find "love.exe" in path "%LOVE_PATH%"
    pause
    goto :eof
)
if not exist "%PROJECT_FOLDER_NAME%" (
    echo Could not find project folder "%PROJECT_FOLDER_NAME%" !
    pause
    goto :eof
)
"%LOVE_PATH%\lovec.exe" %PROJECT_FOLDER_NAME%
pause
