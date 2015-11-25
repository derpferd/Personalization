autoload -U compinit promptinit
autoload -U colors && colors

compinit
promptinit

#To check out some themes that are built into zs do prompt -p

# colors for ls
if [[ -f ~/.dir_colors ]] ; then
	eval $(dircolors -b ~/.dir_colors)
elif [[ -f /etc/DIR_COLORS ]] ; then
	eval $(dircolors -b /etc/DIR_COLORS)
fi

#Used to determine if git branch and returns a string if it is
parse_git_branch() {
	  (git symbolic-ref -q HEAD || git name-rev --name-only --no-undefined --always HEAD) 2> /dev/null
	}

#For the git path
ref='%{$fg_bold[magenta]%}$(parse_git_branch)%{$reset_color%}'
#Directory path
directory='%{$fg_bold[green]%}%~%{$reset_color%}'
#Name of user
name='%{$fg_bold[red]%} %n %{$reset_color%}'

PROMPT="${directory} ::${name}~ ${ref}
%{$fg[green]%}~> %{$reset_color%}"
RPROMPT="[%{$fg_no_bold[cyan]%}%T%{$reset_color%}]"
setopt promptsubst


alias ls='ls -G'
