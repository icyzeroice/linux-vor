#
# 
#

#
# # install zsh
# sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#

#
# # install other theme
# https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# https://github.com/robbyrussell/oh-my-zsh/wiki/External-themes
# 
# # install theme bullet-train (I like this one)
# Download the theme:
#   https://raw.githubusercontent.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme
# Put the file bullet-train.zsh-theme in $ZSH_CUSTOM/themes/
# Configure the theme in your ~/.zshrc file:
# ZSH_THEME="bullet-train"
#

install_zsh() {
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  curl https://raw.githubusercontent.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme -o ~/.oh-my-zsh/themes/bullet-train.zsh-theme

  # TODO: use `sed`` to enable this theme
}
