alias vi='/usr/local/bin/vim'
alias less='/usr/local/bin/jless'
export LANG=ja_JP.UTF-8
export LC_CTYPE=ja_JP.UTF-8
export JLESSCHARSET="japanese"
export PAGER=less

if [ -z "$PS1" ];then return;fi
if [ -z "$TMUX" ];then
	if [ -z `tmux ls` ];then
		tmux
	else
		tmux attach
	fi
fi

alias wgetn="wget --no-check-certificate"
