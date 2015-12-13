autoload -U compinit promptinit
autoload -U colors && colors

compinit
promptinit
##
# BINDINGS --------------------
##
bindkey '\e[1;5C' forward-word            # C-Right
bindkey '\e[1;5D' backward-word           # C-Left
#To check out some themes that are built into zs do prompt -p

##
# DIRCOLORS--------------------- 
##
# colors for ls
#if [[ -f ~/.dir_colors ]] ; then
#	eval $(dircolors -b ~/.dir_colors)
#elif [[ -f /etc/DIR_COLORS ]] ; then
#	eval $(dircolors -b /etc/DIR_COLORS)
#fi

##
# FUNCTIONS --------------------
##
parse_git_branch() {
	#Used to determine if git branch and returns a string if it is
	# (git symbolic-ref -q HEAD || 
	(git name-rev --name-only --no-undefined --always HEAD) 2> /dev/null
}
killscreens () {
	screen -ls | grep Detached | cut -d. -f1 | awk '{print $1}' | xargs kill
}
get_battery_perc(){
	(ioreg -l | grep -i capacity | tr '\n' ' | ' | awk '{printf("%.2f%%\n", $10/$5 * 100)}')
}
##
# LOCAL VARIABLES --------------
##
ref='%{$fg_bold[white]%}$(parse_git_branch)%{$reset_color%}' #For the git path
directory='%{$fg_bold[cyan]%}%~/%{$reset_color%}' #Directory path
name='%{$fg_bold[red]%}%n %{$reset_color%}' #Name of user
arrows='%{$fg_bold[green]%}>%{$reset_color%}%{$fg_bold[red]%}>%{$reset_color%}%{$fg_bold[cyan]%}>  %{$reset_color%}'
Time="[%D{%L:%M:%S}]"
Batt='${fg_bold[green]%}$(get_battery_perc) %{$reset_color%}'
##
# PROMPT SETTING ---------------
##
PROMPT="${name}${Batt}${Time}${arrows}"
RPROMPT="${directory}  ${ref}"

setopt promptsubst #Forces the redraw
##
#ALIASES ------------------------
##
alias ls='ls -GF'

##
#MESSAGES
##
echo "Remember to log your experiences!"

##
## Completion--------------------
###
autoload -U compinit
compinit
zmodload -i zsh/complist        
setopt hash_list_all            # hash everything before completion
setopt completealiases          # complete alisases
setopt always_to_end            # when completing from the middle of a word, move the cursor to the end of the word    
setopt complete_in_word         # allow completion from within a word/phrase
setopt correct                  # spelling correction for commands
setopt list_ambiguous           # complete as much of a completion until it gets ambiguous.

zstyle ':completion::complete:*' use-cache on               # completion caching, use rehash to clear
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'   # ignore case
zstyle ':completion:*' menu select=2                        # menu if nb items > 2
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}       # colorz !
zstyle ':completion:*::::' completer _expand _complete _ignored _approximate # list of completers to use
