#itiou
apt-get install -y git 

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
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
