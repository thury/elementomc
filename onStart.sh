#ninja nano
mkdir /app/nano
curl https://github.com/Ehryk/heroku-nano/raw/master/heroku-nano-2.5.1/nano.tar.gz --location --silent | tar xz -C /app/nano
export PATH=$PATH:/app/nano
echo -e '\033[1;32mNano instalado'
echo -e '\033[1;32mBroadcasting discord NGROK IP'
sleep 5
screen -S minecraft -X stuff "discord broadcast `./ngrokgetip`^M"
