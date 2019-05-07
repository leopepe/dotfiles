DEFAULT_SHELL="bash"

all: $(DEFAULT_SHELL)

bash:
	cp bash/.bashrc $(HOME)/.bashrc

zsh:
	cp zsh/.zshrc $(HOME)/.zshrc

tmux:
	git clone https://github.com/arl/tmux-gitbar.git ~/.config/tmux/tmux-gitbar
	cp tmux/.tmux.conf $(HOME)/.tmux.conf
