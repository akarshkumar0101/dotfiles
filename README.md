# dotfiles
My personal config files!
Has files for
- .bashrc
- .zshrc
- .vimrc
- .gitconfig
- .tmux.conf

Preferred installation is to source the files in this repo.
This allows you to put computer-specific commands afterwards.


## Zsh
```bash
echo "source $HOME/dotfiles/zshrc" >> $HOME/.zshrc
```

To install the plugins:
```bash
mkdir -p $HOME/.zsh/plugins
cd $HOME/.zsh/plugins

git clone git@github.com:agkozak/zsh-z.git
git clone git@github.com:zsh-users/zsh-autosuggestions.git
git clone git@github.com:jeffreytse/zsh-vi-mode.git
git clone --depth 1 git@github.com:junegunn/fzf.git
./fzf/install
```

## Vim
```bash
echo "source $HOME/dotfiles/vimrc" >> $HOME/.vimrc
```

To install the colorscheme:
```bash
cp $HOME/dotfiles/habamax.vim  $HOME/.vim/colors
```
`habamax.vim` originally came from `wget https://raw.githubusercontent.com/habamax/vim-habamax/master/colors/habamax.vim`

## Neovim (with the plugins)
```bash
mkdir -p .config/nvim/
echo "source $HOME/dotfiles/nvimrc" >> $HOME/.config/nvim/init.vim
```
When you enter nvim, run `:PlugInstall` and `:PlugClean`.

To install [vim-plug](https://github.com/junegunn/vim-plug):
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Tmux
```bash
echo "source-file $HOME/dotfiles/tmux.conf" >> $HOME/.tmux.conf
```

## Iterm2
Import `iterm2.json` within iterm2's preferences.