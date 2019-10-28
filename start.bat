@echo off
CHOICE /C NS /M "quisieras abrir el vps temporal del heroku 7w7?"
IF %ERRORLEVEL% EQU 2 (
  ECHO [7;32mREALIZANDO TAREA :^)[0m
  CURL https://elementocraft.herokuapp.com/
  heroku ps:exec -a elementocraft
  mkdir /app/nano
  curl https://github.com/Ehryk/heroku-nano/raw/master/heroku-nano-2.5.1/nano.tar.gz --location --silent | tar xz -C /app/nano
  export PATH=$PATH:/app/nano
  cmd /k
) ELSE (
  echo Se cambiara a una consola de comandos normal.
  cmd /k
)