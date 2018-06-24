##
# ---------- callbacks ----------
# 

install_emacs_callback() {
  cd ~/.emacs.d
  git submodule update --init --recursive
}

test_callback() {
  cd ~/Documents/testrepo
  git submodule update --init --recursive
}