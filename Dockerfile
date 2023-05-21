FROM ubuntu:latest

WORKDIR /home/vtymoshchyk 
COPY ./post_install ./post_install

RUN apt update && apt install -y curl

# run install script
RUN curl https://raw.githubusercontent.com/vlad-tymoshchyk/automatic-setup/master/install/script.bash | bash

CMD ["./post_install/run_after"]
