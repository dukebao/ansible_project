FROM python:3

RUN useradd -m -d /app backend 

USER backend 

WORKDIR /app

RUN wget -qq https://github.com/timoguic/acit4640-py-mysql/archive/refs/heads/master.zip -O /tmp/source.zip
RUN unzip /tmp/source.zip
RUN cp -r acit4640-py-mysql-master/backend /app/src
RUN rm -rf acit4640-py-mysql-master

RUN python -m pip install -r /app/src/requirements.txt

WORKDIR /app/src

COPY backend.conf /app/src

EXPOSE 8000

CMD ["/app/.local/bin/gunicorn","wsgi:app" ,"-b", "0.0.0.0:8000"]

# RUN apt update -y && apt install -y python3 python3-pip unzip acl libmysqlclient-dev mysql-server wget 

# RUN pip3 install --upgrade pip

# RUN pip3 install pymysql

# RUN wget https://github.com/timoguic/acit4640-py-mysql/archive/refs/heads/master.zip

# RUN unzip acit4640-py-mysql-master.zip

# RUN ls

# COPY /home/acit4640-py-mysql-master/backend /backend

# WORKDIR /backend

# RUN pip3 install -r requirements.txt

