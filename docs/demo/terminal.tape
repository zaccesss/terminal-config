# the shell in the palette: a coloured git log, a ripgrep search and a diff summary, then the
# same project's Python file open in Neovim. Run through record.sh, which adds the theme.
Hide
Type "clear; exec /tmp/demo/start"
Enter
Sleep 4s
Ctrl+L
Sleep 500ms
Show
Sleep 1s
Type "glog"
Sleep 400ms
Enter
Sleep 2s
Type "rg -n 'def ' src"
Sleep 400ms
Enter
Sleep 2s
Type "git diff --stat"
Sleep 400ms
Enter
Sleep 2.5s
Screenshot "/tmp/demo/shots/shell.png"
Type "nvim src/demo_project/colours.py"
Sleep 400ms
Enter
Sleep 4s
Type "20j"
Sleep 2s
Screenshot "/tmp/demo/shots/neovim.png"
Sleep 1s
Type ":q"
Enter
Sleep 1s
