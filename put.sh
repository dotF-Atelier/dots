#______ _____ ___________ _____ _      _____ _____
#|  _  \  _  |_   _|  ___|_   _| |    |  ___/  ___|
#| | | | | | | | | | |_    | | | |    | |__ \ `--.
#| | | | | | | | | |  _|   | | | |    |  __| `--. \
#| |/ /\ \_/ / | | | |    _| |_| |____| |___/\__/ /
#|___/  \___/  \_/ \_|    \___/\_____/\____/\____/
#              ______
#             |______|

basepath=$(cd `dirname $0`; pwd)
EMACS=$basepath/emacs
VIM=$basepath/vim
CONF=$basepath/config
ZSH=$basepath/zsh
XORG=$basepath/xorg
SCRIPT=$basepath/script
echo $basepath

##### EMACS #####
echo " ##### EMACS #####"
for file in $(ls $EMACS)
do
    newfile=$(echo $file|sed 's/^/./g')
    ln -s $EMACS/$file $HOME/$newfile
done
##### EMACS #####

##### VIM #####
echo " ##### VIM #####"
for file in $(ls $VIM)
do
    newfile=$(echo $file|sed 's/^/./g')
    ln -s $VIM/$file $HOME/$newfile
done
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
##### VIM #####

##### CONFIG #####
echo " ##### CONFIG #####"
for file in $(ls $VIM)
do
    ln -s $VIM/$file $HOME/.config/
done
##### CONFIG #####

##### SCRIPT #####
echo " ##### SCRIPT #####"
ln -s $SCRIPT $HOME/.script
##### SCRIPT #####

##### ZSH #####
echo " ##### ZSH #####"
for file in $(ls $ZSH)
do
    newfile=$(echo $file|sed 's/^/./g')
    ln -s $ZSH/$file $HOME/$newfile
done
##### ZSH #####

##### XORG #####
echo " ##### XORG #####"
for file in $(ls $XORG)
do
    newfile=$(echo $file|sed 's/^/./g')
    ln -s $XORG/$file $HOME/$newfile
done
##### XORG #####
