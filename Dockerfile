FROM --platform=linux/amd64 python:3.10

RUN apt update
RUN apt install zsh tmux vim htop -y

# RUN chsh -s /usr/bin/zsh root
RUN chsh -s /usr/bin/zsh

# needed for opencv
# RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 -y
# RUN pip install torch==2.0.1
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /root
# COPY . $HOME/dotfiles/. # $HOME not defined for COPY command
COPY . /root/dotfiles/.
RUN echo "source $HOME/dotfiles/zshrc" >> $HOME/.zshrc
RUN echo "source $HOME/dotfiles/vimrc" >> $HOME/.vimrc
RUN echo "source-file $HOME/dotfiles/tmux.conf" >> $HOME/.tmux.conf

RUN mkdir -p $HOME/.zsh/plugins
RUN cd $HOME/.zsh/plugins
# git clone via ssh doesn't work
# git clone not really recommended, but it's fine for now, TODO: use git submodules
RUN git clone https://github.com/agkozak/zsh-z.git $HOME/.zsh/plugins/zsh-z
RUN git clone https://github.com/zsh-users/zsh-autosuggestions.git $HOME/.zsh/plugins/zsh-autosuggestions
RUN git clone https://github.com/jeffreytse/zsh-vi-mode.git $HOME/.zsh/plugins/zsh-vi-mode
RUN git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.zsh/plugins/fzf
RUN $HOME/.zsh/plugins/fzf/install


CMD echo "hello!"; pwd; ls; which python pip jupyter; lscpu
