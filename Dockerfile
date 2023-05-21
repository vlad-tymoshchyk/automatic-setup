FROM ubuntu:latest

WORKDIR /home/vtymoshchyk 
COPY ./post_install ./post_install
COPY ./install-script.bash ./install-script.bash

RUN apt update && apt install -y curl

# run install script
# RUN curl https://raw.githubusercontent.com/vlad-tymoshchyk/automatic-setup/master/install-script.bash | bash
RUN bash install-script.bash 

CMD ["./post_install/run_after"]
