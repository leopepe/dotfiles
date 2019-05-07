set -o vi
export LC_ALL="en_US.UTF-8"
export PS1="\u\[\e[1;32m\]@\[\e[0m\]\h\[\e[1;32m\]::\[\e[0m\]\W \[\e[1;32m\]λ\[\e[0m\] "
export EDITOR=vi
export VISUAL=$EDITOR
source $HOME/.bash_alias
export PATH=$PATH:$HOME/app/bin
# create Workspace
if [[ ! -d $HOME/Workspace ]]; then
    mkdir $HOME/Workspace
fi
# create home bin
if [[ ! -d $HOME/app/bin ]]; then
    mkdir -p $HOME/app/bin
fi
# install rust
if [[ ! -f `which rustc` ]]; then
    curl https://sh.rustup.rs -sSf -o $HOME/rustup.sh
    sh $HOME/rustup.sh -y
    rm $HOME/rustup.sh
fi
# check OS family
if [[ -f /etc/arch-release ]]; then
    export PKGMNG="pacman"
    export OS="arch-linux"
elif [[ -f /etc/redhat-release ]]; then
    export PKGMNG="yum"
    export OS="redhat-linux"
elif [[ -f /etc/debian_version ]]; then
    export PKGMNG="apt"
    export OS="debian-linux"
fi
# install python 3.X
case "$PKGMNG" in
    pacman)
        python_exists=$(pacman -Qi python)
        if [[ $? != 0 ]]; then
            sudo pacman -Sy python --noconfirm
        fi
	sudo pacman -Sy bat --noconfirm
        ;;
    apt)
        apt install -y python3.6
        ;;
    yum)
        yum install -y python36u
        ;;
    *)
        echo "Don't know this OS"
esac
# load funcs
. $HOME/.bash_funcs.sh
