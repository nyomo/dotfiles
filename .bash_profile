alias vi='/usr/local/bin/vim'
#alias less='/usr/local/bin/jless'
export LANG=C.UTF-8
export LC_CTYPE=C.UTF-8
export JLESSCHARSET="japanese"
#export PAGER=less
PATH=$PATH:/home/nyomoko/bin

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

alias wgetn="wget --no-check-certificate"
alias start="~/bin/start.sh"
. ~/.rbenv_env
. ~/.pyenv_env
