# get directory this script is located in
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# ---------------BASH---------------
# cp $DIR/bash_profile $HOME/.bash_profile
# cp $DIR/bashrc $HOME/.bashrc

# ---------------ZSH---------------
echo "Initializing zsh..."
# To install oh-my-zsh:
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
if [[ ! -e $HOME/.zshrc ]]
then
    echo "source $DIR/zshrc" > $HOME/.zshrc
else
    echo "$HOME/.zsh already exists, so not writing to it"
fi

# ---------------VIM/NVIM---------------
echo "Initializing nvim..."
# To install vim-plug for vim:
# curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# To install vim-plug for nvim:
# sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
mkdir -p $HOME/.config/nvim
# cp $DIR/vimrc $HOME/.config/nvim/init.vim
# cp $DIR/vimrc $HOME/.vimrc
if [[ ! -e $HOME/.config/nvim/init.vim ]]
then
    echo "source $DIR/vimrc" > $HOME/.config/nvim/init.vim
else
    echo "$HOME/.config/nvim/init.vim already exists, so not writing to it"
fi

# ---------------TMUX---------------
echo "Initializing tmux..."
# cp $DIR/tmux.conf $HOME/.tmux.conf
if [[ ! -e $HOME/.tmux.conf ]]
then
    # https://blog.sanctum.geek.nz/reloading-tmux-config/
    echo "source-file $DIR/tmux.conf" > $HOME/.tmux.conf
else
    echo "$HOME/.tmux.conf already exists, so not writing to it"
fi

# ---------------SSH---------------
# TODO change these to do sourcing instead of copying
echo "Initializing ssh..."
mkdir -p $HOME/.ssh
cp $DIR/ssh/config $HOME/.ssh/config
cp $DIR/ssh/authorized_keys $HOME/.ssh/authorized_keys

# ---------------GIT---------------
# TODO change these to do sourcing instead of copying
echo "Initializing git..."
cp $DIR/gitconfig $HOME/.gitconfig

# ---------------MATPLOTLIB---------------
# mkdir -p $HOME/.matplotlib
# cp $DIR/matplotlibrc $HOME/.matplotlib/matplotlibrc
# cp $DIR/default_matplotlibrc $HOME/.matplotlib/default_matplotlibrc

# ---------------LIBINPUT-GESTURES---------------
# cp $DIR/libinput-gestures.conf $HOME/.config/libinput-gestures.conf



