# Tmuxrc

Make a tmuxrc symbolic link in `$HOME/.config/`.
```
./install.sh
```

### Issues
- tmux copy to clipboard not working in OS X
```
$ brew install reattach-to-user-namespace
```
- if TPM(Tmux Plugin Manager) was not installed,
    ```sh
$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Sources & References
---
- https://github.com/dahlia/nvimrc
