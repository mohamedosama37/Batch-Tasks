
@echo off
for /f "tokens=1-4" %%a in (input.txt) do (
 ( call   hellow.bat %%a %%b %%c %%d)>nul
  mkdir TEXTFILES
  mkdir SOURCEFILES
  mkdir HEADERFILES
  cd %%a
  copy /y *.txt  D:\embb\tooling\assigment_4\TEXTFILES\
  copy /y *.c  D:\embb\tooling\assigment_4\SOURCEFILES
  copy /y *.h  D:\embb\tooling\assigment_4\HEADERFILES
  cd ..
)

