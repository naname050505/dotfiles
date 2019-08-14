FROM nvidia/cuda:9.0-cudnn7-runtime


RUN apt-get update
RUN apt-get -y install python3-pip curl tmux git tig wget vim htop sudo
RUN pip3 install keras

RUN git clone https://github.com/naname050505/dotfiles.git \
    git clone https://github.com/naname050505/R.git \
    cp ./dotfiles/.tmux.conf ~/ \
    cp ./dotfiles/.vimrc ~/ \
    cp ./dotfiles/.bashrc ~/ \ 
    pip3 uninstall tensorflow-gpu \
    pip3 install tensorflow-gpu==1.10.1 \
    apt-get install software-properties-common \
    add-apt-repository -y ppa:jonathonf/python-3.6 \
    apt-get update \
    apt-get -y install python3.6 python3.6-dev


