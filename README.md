# Easy Linux Config

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
- [ ] install java
- [ ] install nvm
- [ ] install zsh
- [ ] fix nouveau problem
- [ ] support arch-linux