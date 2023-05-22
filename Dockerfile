FROM ubuntu:latest

WORKDIR /home/vtymoshchyk 
COPY . .

RUN apt update && apt install -y curl
RUN bash install-script.bash 

RUN ansible-playbook --tags zsh ./local.yml && bash ./checks/zsh

CMD ["./post_install/run_after"]
