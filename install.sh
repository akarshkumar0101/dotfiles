# get directory this script is located in
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

ln -s $DIR/bashrc $HOME/.bashrc
ln -s $DIR/bash_profile $HOME/.bash_profile

ln -s $DIR/zshrc $HOME/.zshrc

mkdir -p $HOME/.config/nvim
ln -s $DIR/init.vim $HOME/.config/nvim/init.vim
# ln -s $DIR/init.vim $HOME/.vimrc

ln -s $DIR/options.vim $HOME/.config/nvim/options.vim
ln -s $DIR/mappings.vim $HOME/.config/nvim/mappings.vim
ln -s $DIR/plugins.vim $HOME/.config/nvim/plugins.vim
ln -s $DIR/ui.vim $HOME/.config/nvim/ui.vim

ln -s $DIR/tmux.conf $HOME/.tmux.conf

mkdir $HOME/.ssh
ln -s $DIR/ssh/config $HOME/.ssh/config
ln -s $DIR/ssh/authorized_keys $HOME/.ssh/authorized_keys

ln -s $DIR/gitconfig $HOME/.gitconfig

mkdir $HOME/.matplotlib
ln -s $DIR/matplotlibrc $HOME/.matplotlib/matplotlibrc
ln -s $DIR/default_matplotlibrc $HOME/.matplotlib/default_matplotlibrc

ln -s $DIR/libinput-gestures.conf $HOME/.config/libinput-gestures.conf
