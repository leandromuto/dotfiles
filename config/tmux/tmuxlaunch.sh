# Set some configuration options
SESSION=$USER

# Create a new, detached session
tmux new-session -s $SESSION

# Select and configure the first window
tmux send-keys 'cd ~/Projects' C-m
tmux split-window -h
tmux split-window -v
tmux select-pane -U
tmux send-keys 'screenfetch' C-m

# Attach to the session
# tmux attach-session -t $SESSION
