PROMPT=$'%{$fg[white]%} %{$fg_bold[cyan]%}%~%{$reset_color%}$(git_prompt_info) %{$fg[cyan]%}%D{[%I:%M:%S]}\
%{$fg_bold[red]%}%n$%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[white]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""
