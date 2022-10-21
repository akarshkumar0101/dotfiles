# get directory this script is located in
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# ---------------BASH---------------
cp $DIR/bash_profile $HOME/.bash_profile
cp $DIR/bashrc $HOME/.bashrc

# ---------------ZSH---------------
# To install oh-my-zsh:
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
cp $DIR/zshrc $HOME/.zshrc

# ---------------VIM/NVIM---------------
# To install vim-plug for vim:
# curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# To install vim-plug for nvim:
# sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
mkdir -p $HOME/.config/nvim
cp $DIR/vimrc $HOME/.config/nvim/init.vim
cp $DIR/vimrc $HOME/.vimrc

# ---------------TMUX---------------
cp $DIR/tmux.conf $HOME/.tmux.conf

# ---------------SSH---------------
mkdir -p $HOME/.ssh
cp $DIR/ssh/config $HOME/.ssh/config
cp $DIR/ssh/authorized_keys $HOME/.ssh/authorized_keys

# ---------------GIT---------------
cp $DIR/gitconfig $HOME/.gitconfig

# ---------------MATPLOTLIB---------------
mkdir -p $HOME/.matplotlib
cp $DIR/matplotlibrc $HOME/.matplotlib/matplotlibrc
cp $DIR/default_matplotlibrc $HOME/.matplotlib/default_matplotlibrc

# ---------------LIBINPUT-GESTURES---------------
cp $DIR/libinput-gestures.conf $HOME/.config/libinput-gestures.conf
