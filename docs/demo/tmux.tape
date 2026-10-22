# a tmux session with tabs coloured by window name. The editor window is split into Neovim, a
# ripgrep search, a git log and a shell showing a diff summary. Run through record.sh, which
# adds the theme. The session runs on its own socket (tmux -L demo), apart from any session already open.
Hide
Type "clear; exec /tmp/demo/start"
Enter
Sleep 4s
Type@5ms `export DOTFILES_NO_BANNER=1; t() { tmux -L demo "$@"; }; t new-session -d -s dev -n editor -x 125 -y 40 && t split-window -h -t dev:editor && t split-window -v -t dev:editor.1 && t split-window -v -t dev:editor.3`
Enter
Sleep 1s
Type@5ms `t send-keys -t dev:editor.1 'nvim src/demo_project/colours.py' Enter; t send-keys -t dev:editor.2 'rg -n "def " src' Enter; t send-keys -t dev:editor.3 'glog' Enter; t send-keys -t dev:editor.4 'git diff --stat' Enter`
Enter
Sleep 1s
Type@5ms `t new-window -d -t dev:2 -n git; t new-window -d -t dev:3 -n search; t new-window -d -t dev:4 -n shell; t select-pane -t dev:editor.1`
Enter
Sleep 3s
Type "clear; exec tmux -L demo attach -t dev"
Enter
Sleep 2s
Show
Sleep 3s
Ctrl+B
Type "2"
Sleep 1.2s
Ctrl+B
Type "3"
Sleep 1.2s
Ctrl+B
Type "4"
Sleep 1.2s
Ctrl+B
Type "1"
Sleep 2.5s
Screenshot "/tmp/demo/shots/tmux.png"
Sleep 1s
Hide
Ctrl+B
Type ":kill-server"
Enter
Sleep 500ms
