DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


ln -s $DIR/bashrc ~/.bashrc
ln -s $DIR/bash_profile ~/.bash_profile

ln -s $DIR/zshrc ~/.zshrc

mkdir -p ~/.config/nvim
ln -s $DIR/init.vim ~/.config/nvim/init.vim
# ln -s $DIR/init.vim ~/.vimrc

ln -s $DIR/options.vim ~/.config/nvim/options.vim
ln -s $DIR/mappings.vim ~/.config/nvim/mappings.vim
ln -s $DIR/plugins.vim ~/.config/nvim/plugins.vim
ln -s $DIR/ui.vim ~/.config/nvim/ui.vim


ln -s $DIR/tmux.conf ~/.tmux.conf

ln -s $DIR/ssh/config ~/.ssh/config

ln -s $DIR/gitconfig ~/.gitconfig

ln -s $DIR/libinput-gestures.conf ~/.config/libinput-gestures.conf

