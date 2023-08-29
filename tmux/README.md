# tmux Config

To-do:

- [ ] Install TPM automatically on first configuration
- [ ] Change to the specified theme automatically
- [ ] Fix "GPU Unknown" message in the status bar when using a MacBook with M1+ GPU

## Preconditions

Before moving on, install/clone the following plugins. More details can be found in the plugin documentation.

- [tmux-powerline](https://github.com/erikw/tmux-powerline)
- [tmux plugin manager](https://github.com/tmux-plugins/tpm)

## Configuring

After cloned the repository, open the terminal and open tmux. Now, run the following command to source the config file from this folder. It will throw the TPM plugin error, so just ignore.

```tmux source <installed path>/dotfiles/tmux/.tmux.conf```

### Enabling the Plugins

With the plugins already installed and the binding key changed, run `bind+I` to install the rest of the plugins listed in the Plugins section in the ~/.tmux.conf file.

To see more plugin, please refer to the [TPM Plugins page](https://github.com/tmux-plugins/list).

The result after running should be something similar to this ![iTerm application after running the tmux TPM install command](image.png)

## Changing the Color Scheme

Replace the `theme.sh` found in this folder with the `~/tmux-powerline/themes/default.sh`. Then, execute the `~/tmux-powerline/.generate_rc.sh` as described in the official documentation.
