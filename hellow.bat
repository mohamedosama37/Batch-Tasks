@echo off


set text_value=0
set output_folder=%1
set output_file=%2
set output_filee=%3
set output_fileee=%4
if not exist %output_folder% (
mkdir %output_folder%
)
cd %output_folder%
rem attrib -r %output_folder%
if not exist %output_file% (
echo %text_value% >%output_file%
goto aim
)
for /f "tokens=1" %%a in (%output_file%) do (
set x=%%a

)
set /a x=x+1

echo %x% > %output_file%
:aim


if not exist %output_filee% (
echo %text_value% >%output_filee%
goto aim1
)
for /f "tokens=1" %%a in (%output_filee%) do (
set x=%%a

)
set /a x=x+1

echo %x% > %output_filee%
:aim1


if not exist %output_fileee% (
echo %text_value% >%output_fileee%
goto aim2
)
for /f "tokens=1" %%a in (%output_fileee%) do (
set x=%%a

)
set /a x=x+1

echo %x% > %output_fileee%

:aim2
cd ..
rem attrib +r %output_file%
:error
set /p x= press any key to exiit ::