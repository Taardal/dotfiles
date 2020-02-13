## Fresh install guide
![Alt text](example.png?raw=true "Terminal example")

#### zsh, oh-my-zsh, git, vim and tmux
1. Clone repo to a permanent location, as we need to set up some syslinks.
2. Run the `fresh-install.sh` script to setup zsh, git and more.
3. Change the git username/password/signingkey in `.gitconfig`.

#### MacOS Terminal
1. Import `themes/dracula.terminal` profile to the terminal using the cog button under profiles.
2. Select the imported profile and press `Default` next to the cog.
3. Under Terminal's general pane, select *Shells open with* command, and enter `/usr/local/bin/zsh`
4. Under Encodings, de-select everything expect UTF-8