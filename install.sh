apt -y update
apt -y dist-upgrade
apt -y upgrade
apt install -y sudo
apt -y install tig
apt -y install vim
apt -y install tmux
apt -y install tig
apt -y install htop
apt -y install python
apt -y install curl
apt -y install wget
apt -y install build -essential

#4add-apt-rwpository 
apt -y install apt-file

git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bash_profile
source ~/.bash_profile

git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bash_profile
source ~/.bash_profile

#4vimcolor
mkdir ~/.vim
mkdir ~/.vim/colors
cd ~/.vim/colors
git clone https://github.com/chriskempson/tomorrow-theme.git 
cp tomorrow-theme/vim/colors/Tomorrow-Night-Eighties.vim ./

#4 vim
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > vim_install.sh
sh ./vim_install.sh
rm -rf vim_install.sh
mkdir ~/.vim/undo

git config --global user.name "naname050505"
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
