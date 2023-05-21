FROM ubuntu:latest

WORKDIR /home/vtymoshchyk 
COPY ./post_install ./post_install

CMD ["./post_install/run_after"]
