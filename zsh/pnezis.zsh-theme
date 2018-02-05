function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

function vi_mode_prompt_info() {
  echo "%{$fg_bold[blue]%}${${KEYMAP/vicmd/$MODE_INDICATOR}/(main|viins)/}%{$reset_color%}"
}

function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}

#PROMPT='$(vi_mode_prompt_info)%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}$(box_name)%{$reset_color%} in %{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%} $(git_prompt_info)
#$(virtualenv_info)%(?,,%{${fg_bold[white]}%}[%?]%{$reset_color%} )%{$fg[blue]%}λ%{$reset_color%} '

PROMPT='%n%'

local return_status="%{$fg[red]%}%(?..✘)%{$reset_color%}"
RPROMPT='${return_status}%{$reset_color%}'
