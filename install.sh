apt-get -y update
apt-get -y dist-upgrade
apt-get -y upgrade
apt install -y sudo
apt-get -y install tig
apt-get -y install vim
apt-get -y install tmux
apt-get -y install tig
apt-get -y install htop
apt-get -y install python
apt-get -y install curl
apt-get -y install wget
apt-get -y install build -essential

#4add-apt-rwpository 
apt-get -y install apt-file
apt-file -y update
apt-file -y search add-apt-repository
apt-get -y install software-properties-common

#4python3
curl -kL https://bootstrap.pypa.io/get-pip.py |  python3 #install pip
add-apt-repository -y ppa:jonathonf/python-3.6
apt-get -y update
apt-get -y install python3.6 python3.6-dev
wget https://bootstrap.pypa.io/get-pip.py
python3.6 get-pip.py
pip install --upgrade --ignore-installed tensorflow-gpu==1.4
pip install keras
pip install opencv-python

#4vimcolor
mkdir ~/.vim
mkdir ~/.vim/colors
cd ~/.vim/colors
git clone https://github.com/chriskempson/tomorrow-theme.git 
cp tomorrow-theme/vim/colors/Tomorrow-Night-Eighties.vim ./

#4 julia
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
brew cask install julia # 4 mac
sudo ln -s /Applications/Julia-0.6.app/Contents/Resources/julia/bin/julia /bin # 4 mac
