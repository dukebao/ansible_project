FROM nginx

ARG BACKEND_URL
ARG backend

WORKDIR /app/src

RUN apt update -y && apt install -y wget unzip

RUN wget -qq https://github.com/timoguic/acit4640-py-mysql/archive/refs/heads/master.zip -O /tmp/source.zip
RUN unzip /tmp/source.zip
RUN cp -r acit4640-py-mysql-master/frontend /frontend

COPY . /etc/nginx/templates/

RUN service nginx restart
# COPY /home/acit4640-py-mysql-master/frontend /frontend

