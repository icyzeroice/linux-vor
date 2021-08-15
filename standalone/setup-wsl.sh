# 1. Setup github ssh key
# git clone https://gitee.com/icyzeroice/ssh-save.git .ssh



# 2. Setup Tmux
# https://github.com/gpakosz/.tmux
cd ~
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .


# 3. Setup Windows Terminal starting directory
# https://superuser.com/questions/1185033/what-is-the-home-directory-on-windows-subsystem-for-linux
# \\wsl$\Ubuntu\home\hyouka


# 4. Setup Chinese
# https://docs.microsoft.com/en-us/windows/wsl/faq#how-do-i-change-the-display-language-of-wsl-

# 5. Spacemacs
cd ~

# cc is needed for emacSQL
# https://www.reddit.com/r/emacs/comments/adlmh2/emacswindows_emacsqlsqliteensurebinary_no_emacsql/
sudo apt install clang gcc g++

sudo apt install sqlite
git clone -b develop https://github.com/syl20bnr/spacemacs ~/.emacs.d
git clone git@github.com:icyzeroice/.spacemacs.d.git

# End the file

