#!/bin/sh
echo ""
echo "  (\.   \      ,/) "
echo "   \(   |\     )/    Hear Ye, hear Ye! There be magic ahead!"
echo "   //\  | \   /\\ "
echo "  (/ /\_#oo#_/\ \)   This script downloads zsh and tmux, and configure it according to my"
echo "   \/\  ####  /\/    preferences. This script will replace existing configurations!"
echo ""

read -p "Are ye alright with this? (y/n) " RESP
if [ "$RESP" == "y" ]; then
  echo "brew: installing homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  echo "brew: installing font -> fira code..."
  brew install cask font-fira-code

  echo "brew: installing zsh..."
  brew install zsh

  echo "zsh: installing oh-my-zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

  echo "oh-my-zsh: installing plugins..."

  echo "oh-my-zsh: installing plugin -> zsh-docker..."
  git clone https://github.com/zsh-users/zsh-docker.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-docker
  ln -s ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-docker ${ZSH:-~/.oh-my-zsh}/plugins/zsh-docker

  echo "oh-my-zsh: installing plugin -> zsh-autosuggestions..."
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  ln -s ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions ${ZSH:-~/.oh-my-zsh}/plugins/zsh-autosuggestions

  echo "oh-my-zsh: installing plugin -> zsh-syntax-highlighting..."
  git clone https://github.com/MichaelAquilina/zsh-you-should-use.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/you-should-use
  ln -s ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/you-should-use ${ZSH:-~/.oh-my-zsh}/plugins/you-should-use

  echo "oh-my-zsh: installing plugin -> zsh-syntax-highlighting..."
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  ln -s ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting ${ZSH:-~/.oh-my-zsh}/plugins/zsh-syntax-highlighting

  echo "oh-my-zsh: configuring plugin -> osx -> adding symlink for spotify api..."
  ln -s ${PWD}/.shpotify.cfg ${HOME}/.shpotify.cfg

  echo "oh-my-zsh: installing dracula theme..."
  git clone https://github.com/dracula/zsh.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/dracula/
  ln -s ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/dracula/dracula.zsh-theme ${ZSH:-~/.oh-my-zsh}/themes/dracula.zsh-theme

  echo "zsh: updating .zshrc..."
  rm ${HOME}/.zshrc
  ln -s ${PWD}/.zshrc ${HOME}/.zshrc

  echo "misc: updating ~/.config..."
  rm -r ${HOME}/.config
  mkdir ${HOME}/.config

  echo "zsh: adding symlink for config..."
  ln -s ${PWD}/.config/zsh ${HOME}/.config/zsh
  
  #echo "brew: installing tmux..."
  #brew install tmux

  #echo "tmux: removing .tmux.conf if it exists..."
  #rm ${HOME}/.tmux.conf

  #echo "tmux: adding syslinks for configs..."
  #ln -s ${PWD}/.tmux.conf ${HOME}/.tmux.conf
  #ln -s ${PWD}/.config/tmux/tmux.theme ${HOME}/.config/tmux/tmux.theme
  #ln -s ${PWD}/.config/tmux/scripts/ ${HOME}/.config/tmux

  #echo "tmux: mark scripts as executables..."
  #chmod +x ${HOME}/.config/tmux/scripts/*

  echo "git: adding syslinks for git configs..."
  ln -s ${PWD}/.gitconfig ${HOME}/.gitconfig

  echo "All done!"
  echo "You can now set /usr/local/bin/zsh as your default terminal shell"
else
  echo ""
  echo "Script failed successfully!"
fi
