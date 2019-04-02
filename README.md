# Linux Vor!!

> Deploy linux environment and more configurations in a script.

### Usage

```
$ sudo chmod +x ./install.sh

$ ./install.sh
```

OR

```
$ sudo bash install.sh
```

Write your own extension function you want to deploy in folder `./src/extends`.

Then, add extension module name in the list named `enabled_extends_list` shown in file `./config/setting.sh`.

### TODO List

- [x] install packages
- [x] install git repos
- [x] install java
- [x] install nvm
- [x] install zsh and oh-my-zsh
- [ ] install vscode extends
- [ ] install spacemacs
- [ ] fix nouveau problem
- [ ] check system version to fire different shell for different system (check `pacman`, `apt`, `dnf`, etc.)
- [ ] support arch-linux
- [ ] use Docker to debug!
- [ ] install cuda
