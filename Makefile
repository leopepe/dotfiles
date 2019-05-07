.PHONY: all

DEFAULT_SHELL="bash"

all: $(DEFAULT_SHELL)

bash:
	cp bash/.[^.]* $(HOME)/

zsh:
	cp zsh/.[^.]* $(HOME)/

tmux-leopepe:
	git clone https://github.com/arl/tmux-gitbar.git ~/.config/tmux/tmux-gitbar
	cp tmux/.[^.]* $(HOME)/

tmux-samoshkin:
	git clone https://github.com/samoshkin/tmux-config.git
	cd tmux-config
	./install.sh

i3:
	cp -R .config/* $(HOME)/.config/
