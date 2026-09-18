:: [English] ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Compiling a Love2D project for Windows OS
:: Written by laet in 2026

:: If you're not familiar with my batch files, I recommend following the steps below the first time:
:: 1. Place this batch file in your project folder
:: 2. Create a folder named "Project"
:: 3. Copy all your project files
:: 4. Place them in the newly created "Project" folder

:: To compile your project, simply run this batch file.

:: When you run this batch file, a "Build" folder will be created, within which another folder will be created,
:: "Windows," which will contain your compiled program.

:: To change the path to the Love2D executable file, the name of the "Project" folder, or
:: the name of the folders for the compiled program, edit the variables in this file.

:: [Русский] ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Компиляция Love2D проекта для ОС Windows
:: Написал laet в 2026

:: Если вы не ознакомлены с моими батниками, советую в первый раз выполнить несколько шагов ниже:
:: 1. Поместите данный батник в папку с вашим проектом
:: 2. Создайте папку с именем "Project"
:: 3. Скопируйте все файлы вашего проекта
:: 4. Поместите их в созданную папку "Project"

:: Для того чтобы скомпилировать ваш проект, достаточно запустить данный батник.

:: При запуске данного батника, создастся папка "Build", внутри которой будет создана ещё одна папка
::     "Windows", в которой будет лежать ваша скомпилируемая программа.

:: Для того чтобы изменить путь к исполняемому файлу Love2D или название для папки "Project" или же
::     название папок для компилируемой программы, редактируйте переменные в данном файле.

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

set LOVE_PATH=C:\Program Files\LOVE
set BUILD_PATH=Build\Windows
set PROJECT_FOLDER_NAME=Project

if not exist "%PROJECT_FOLDER_NAME%" (
    echo Could not find project folder "%PROJECT_FOLDER_NAME%" !
    pause
    goto :eof
)
if not exist "%BUILD_PATH%" mkdir "%BUILD_PATH%"
cd "%PROJECT_FOLDER_NAME%"
tar --format=zip -a -c -f ..\game.love *
cd ..
copy /b "%LOVE_PATH%\love.exe"+game.love "%BUILD_PATH%\game.exe"
copy "%LOVE_PATH%\*.dll" "%BUILD_PATH%\"
copy "%LOVE_PATH%\license.txt" "%BUILD_PATH%\"
del game.love
pause
