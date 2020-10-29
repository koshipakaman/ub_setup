import os
import subprocess as sp

# network
# $ nmcli device wifi connect [SSID] password [PASSWORD]
def command(string):
    sp.run(string.split(" "))


config = {
    "Xresources": "~/.Xresources",
    "keyborad": "/etc/default/keyboard",
    "init.vim": "~/.config/nvim/init.vim",
    "config.fish": "~/.config/fish/config.fish",
    "i3_config": "~/.config/i3/config",
    "xinitrc": "~/.xinitrc",
    "latexmkrc": "~/.latexmk",
}

command("sudo apt -y update")
command("sudo apt -y upgrade")

command("cat apt_resuirements.txt | xargs sudo apt -y install")
command("pip install -r pip_requirements.txt")

# dein install
# :call dein#install()
# command("source dein.sh")

# fiser install
# command("source fish.sh")

# config rewrite
# for conf, path in config.items():
#     command("sudo cp -b ./{} {}".format(conf, os.path.expanduser(path)))
