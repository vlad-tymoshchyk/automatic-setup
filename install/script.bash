apt update &&
  apt install -y software-properties-common &&
  apt-add-repository -y ppa:ansible/ansible &&
  apt update &&
  apt install -y ansible 
