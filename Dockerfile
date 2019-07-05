FROM nvidia/cuda:9.0-cudnn7-runtime


RUN apt-get update
RUN apt-get -y install python3-pip curl tmux git tig wget
RUN pip3 install keras

RUN git clone https://github.com/naname050505/dotfiles.git \
    cp ./dotfiles/.tmux.conf ~/ \
    cp ./dotfiles/.vimrc ~/ \
    cp ./dotfiles/.bashrc ~/ \ 
    pip3 uninstall tensorflow-gpu \
    pip3 install tensorflow-gpu==1.10.1
