FROM ubuntu:latest

WORKDIR /home/vtymoshchyk 
COPY . .

CMD ["./run_after"]
