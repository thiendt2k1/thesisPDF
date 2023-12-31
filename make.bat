@echo off
set PROJECT_ROOT=%cd%
set FONTS_PATH=%cd%\template\fonts
set OUTPUT_NAME=thesis

rem Build the thesis PDF from the Typst template
:build
typst --font-path %FONTS_PATH% --root=%PROJECT_ROOT% watch .\thesis.typ %OUTPUT_NAME%.pdf
echo ****************************************************
echo make done!!!
echo ****************************************************
pause
typst --font-path ./template/fonts --root=./ watch .\thesis.typ thesis.pdf