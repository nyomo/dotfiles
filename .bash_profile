alias vi='/usr/local/bin/vim'
#alias less='/usr/local/bin/jless'
export LANG=ja_JP.UTF-8
export LC_CTYPE=ja_JP.UTF-8
export JLESSCHARSET="japanese"
export PAGER=less
PATH=~/bin:$PATH

if [ -z "$PS1" ];then return;fi
if [ -z "$TMUX" ];then
	if [ -z "$(tmux ls)" ];then
		tmux
	else
    if [ -z "$(tmux lsc)" ];then tmux attach ;fi
	fi
fi
alias wgetn="wget --no-check-certificate"

[ -f ~/.dotfiles/.pyenv_env ] && . ~/.dotfiles/.pyenv_env
[ -f ~/.dotfiles/.rbenv_env ] && . ~/.dotfiles/.rbenv_env
