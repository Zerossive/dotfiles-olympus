# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
	PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

export EDITOR=nvim

# Aliases
alias ll="eza -hlF --icons --no-permissions --no-user --group-directories-first --time-style relative"
alias lla="eza -halF --icons --no-user --group-directories-first --time-style relative"
alias lt="eza -T --icons --group-directories-first"
alias rn='sudo systemctl restart NetworkManager'
alias n='nvim'
alias c="clear"
alias install="sudo dnf install"
alias remove="sudo dnf remove"
alias search="sudo dnf search"
alias dockerl='docker ps --format "table {{.Names}}\t{{.ID}}\t{{.Status}}"'
alias ea="nvim ~/.bashrc"
alias rsyncc="rsync -haviP"
alias re='source ~/.bashrc'

# Zoxide
eval "$(zoxide init --cmd cd bash)"
