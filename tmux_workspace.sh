#!/bin/bash

SESSIONNAME="project"
tmux has-session -t $SESSIONNAME &> /dev/null

if [ $? != 0 ]
 then
    echo "creating new tmux session..."

    # Start New Session with our name
    tmux new-session -d -s $SESSIONNAME

    # to send a command to a pane:
    # tmux send-keys -t 'Shell' "zsh" C-m 'clear' C-m

    tmux rename-window -t 0 'main'
    tmux split-window -h -t $SESSIONNAME:0
    tmux split-window -v -t $SESSIONNAME:0
    tmux select-pane -t 0
    tmux split-window -v -t $SESSIONNAME:0

    
    tmux new-window -t $SESSION:1 -n 'code'
    # tmux send-keys -t 'Hugo Server' 'hugo serve -D -F' C-m # Switch to bind script?
    tmux split-window -h -t $SESSIONNAME:1
    tmux split-window -v -t $SESSIONNAME:1
    tmux select-pane -t 0
    tmux split-window -v -t $SESSIONNAME:1

    tmux new-window -t $SESSION:2 -n 'data'
    # tmux send-keys -t 'Writing' "nvim" C-m
    tmux split-window -h -t $SESSIONNAME:2
    tmux split-window -v -t $SESSIONNAME:2
    tmux select-pane -t 0
    tmux split-window -v -t $SESSIONNAME:2

    # Setup an additional shell
    tmux new-window -t $SESSION:3 -n 'process'
    tmux split-window -h -t $SESSIONNAME:3
    tmux split-window -v -t $SESSIONNAME:3
    tmux select-pane -t 0
    tmux split-window -v -t $SESSIONNAME:3


    tmux select-window -t $SESSIONNAME:0

fi

# Attach Session, on the Main window
tmux attach-session -t $SESSION:0
