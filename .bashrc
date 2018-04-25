# .bashrc
set -o vi
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
print_prompt(){
	PSL=`printf "[%s@%s:%s]" $USER $HOSTNAME $PWD`
	PSD=`date +"%H:%M:%S %Y-%m-%d"`
	PSR=`printf "[%s]" "$PSD"`
	printf "%s%$(($COLUMNS-${#PSL}))s" "$PSL" "$PSR"
}
PROMPT_COMMAND=print_prompt
PS1="$"
