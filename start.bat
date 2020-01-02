@echo off
CHOICE /C NS /M "quisieras abrir el vps temporal del heroku 7w7?"
IF %ERRORLEVEL% EQU 2 (
  :connect
  ECHO [7;32mEJECUTANDO TAREA :^)[0m
  powershell ^(curl elementocraft.herokuapp.com^).Content | find "ngrok"
  echo Install Nano
  echo mkdir /app/nano
  echo curl https://github.com/Ehryk/heroku-nano/raw/master/heroku-nano-2.5.1/nano.tar.gz --location --silent ^| tar xz -C /app/nano
  echo export PATH=$PATH:/app/nano
  heroku ps:exec -a elementocraft
  CHOICE /C NS /M "     X     Conexion perdida, intentar restablecer?     X     "
  IF %ERRORLEVEL% EQU 2 goto connect
  cmd /k
) ELSE (
  echo Se cambiara a una consola de comandos normal.
  cmd /k
)
