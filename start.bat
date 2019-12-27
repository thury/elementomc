@echo off
CHOICE /C NS /M "quisieras abrir el vps temporal del heroku 7w7?"
IF %ERRORLEVEL% EQU 2 (
  ECHO [7;32mEJECUTANDO TAREA :^)[0m
  powershell (curl elementocraft.herokuapp.com).Content | find "ngrok"
  echo Install Nano
  echo mkdir /app/nano
  echo curl https://github.com/Ehryk/heroku-nano/raw/master/heroku-nano-2.5.1/nano.tar.gz --location --silent ^| tar xz -C /app/nano
  echo export PATH=$PATH:/app/nano
  heroku ps:exec -a elementocraft
  cmd /k
) ELSE (
  echo Se cambiara a una consola de comandos normal.
  cmd /k
)
pause
