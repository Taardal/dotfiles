export PATH=$HOME/bin:/usr/local/bin:/opt/local/bin:$PATH

# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Ensure UTF-8 is set as character encoding
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Set default text editor
export EDITOR=vim

# Autostart tmux
#ZSH_TMUX_AUTOSTART=true

# Path to your zsh functions
fpath=(~/.config/zsh/functions $fpath)
autoload -Uz gcloud gcurl gsutil lpass printcolors yaml-lint 

# Folder for custom files
#ZSH_CUSTOM=$HOME/.oh-my-custom/

# Theme to load from ~/.oh-my-zsh/themes/
ZSH_THEME="dracula"

# Plugins to load
plugins=(z brew git-flow osx extract docker vscode golang common-aliases you-should-use zsh-autosuggestions zsh-syntax-highlighting)

# Source alias files
source ${HOME}/.config/zsh/aliases/git
source ${HOME}/.config/zsh/aliases/spotify
source ${HOME}/.config/zsh/aliases/casual
source ${HOME}/.config/zsh/exports/flutter
source ${HOME}/.bulder
source ${HOME}/.go
source $ZSH/oh-my-zsh.sh
