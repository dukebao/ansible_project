FROM ubuntu

RUN apt update -y && apt install -y curl wget 
#wget 
RUN wget -qq https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh

RUN chmod +x wait-for-it.sh

RUN bash ./wait-for-it.sh -h db -p 3306 -t 60 -- echo "things are up and running"

# RUN curl -X POST http://localhost:8000/add -H "Content-Type: application/json" -d '{"name":"stevenC","bcit_id":"A1235"}'

# curl -X POST http://localhost:8000/add -H "Content-Type: application/json" -d '{"name":"steven","bcit_id":"A1234"}'
CMD ["curl", "-X", "POST" , "http://localhost:8000/add" , "-H" , "Content-Type: application/json" , "-d" , '"{"name":"steven","bcit_id":"A12366"}"' ]
# CMD ["curl", "-X", "POST" , "http://localhost:8000/add" , "-H" , "Content-Type: application/json" , "-d" , '{"name": steven, "bcit_id": A01234}' ]