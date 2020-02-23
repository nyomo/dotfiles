alias vi='/usr/local/bin/vim'
#alias less='/usr/local/bin/jless'
export LANG=ja_JP.UTF-8
export LC_CTYPE=ja_JP.UTF-8
export JLESSCHARSET="japanese"
export PAGER=less
PATH=~/bin:/mnt/c/Windows/System32:$PATH

if [ -z "$PS1" ];then return;fi
if [ -z "$TMUX" ];then
  eval `ssh-agent`
  ssh-add ~/.ssh/GHE_20180724_rsa
	if [ -z "$(tmux ls)" ];then
		tmux
	else
		tmux attach
	fi
fi
[ -z "$(cat /proc/version | grep -i 'microsoft')"  ] || cat /proc/version | grep -i 'microsoft'

alias wgetn="wget --no-check-certificate"

[ -f ~/.dotfiles/.pyenv_env ] && . ~/.dotfiles/.pyenv_env
[ -f ~/.dotfiles/.rbenv_env ] && . ~/.dotfiles/.rbenv_env
