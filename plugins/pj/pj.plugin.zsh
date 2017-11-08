#!/bin/zsh

#
# Original idea by DefV (Jan De Poorter)
# Source: https://gist.github.com/pjaspers/368394#comment-1016
#
# Usage:
#  - Set `$PROJECT_PATHS` in your ~/.zshrc
#    e.g.: PROJECT_PATHS=(~/src ~/work)
#  - In ZSH you now can open a project directory with the command: `pj my-project`
#    the plugin will locate the `my-project` directory in one of the $PROJECT_PATHS
#    Also tab completion is supported.
#  - `pjo my-project` will open the directory in $EDITOR
# 

function cd_and_enter(){
    dir_link=$1
    echo " DIR_LINK: " ${dir_link}
    dir_real=`readlink ${dir_link}`
    echo " DIR_REAL: " ${dir_real}

    if [[ -d ${dir_real} ]] then         # follow the symlink 
        cd ${dir_real}
    elif [[ "${dir_real}" == "" ]] then  # the argument is a directory and *not* symlink
        cd ${dir_link}
    else                                 # 'dir_link' is not a symlink, neither a directory
        echo
        echo " ### ERROR ###: not a directory: '${dir_link}' ---> '${dir_real}' "
        echo
    fi
    unset dir_link
    unset dir_real
}


function pj() {
    cmd="cd_and_enter" #"cd"
    file=$1
    #echo " ----> ARG IS: " $file

    if [[ "open" == "$file" ]] then
        shift
        file=$*
        cmd=(${(s: :)EDITOR})
    else
        file=$*
    fi

    for project in $PROJECT_PATHS; do
        if [[ -d $project/$file ]] then
            dir_top=$(echo $file | awk -F "/" '{print $1}')
            $cmd "$project/${dir_top}"  # cd into upper dir
            dir_down=$(echo $file | sed 's/^[^\/]*\///g')
            # find the first "/" occurrence:
            # https://unix.stackexchange.com/questions/232657/delete-till-first-occurrence-of-colon-using-sed
            [[ "${dir_top}" != "${dir_down}" ]] && cd $dir_down # cd intro complete path (only if the given full path contains a "/")
            unset project # Unset project var
            return
        fi
    done

    echo "No such project $1"
}

alias pjo="pj open"

function _pj () {
    # might be possible to improve this using glob, without the basename trick
    #typeset -a projects
    #projects=($PROJECT_PATHS/*)
    #projects=$projects:t
    #_arguments "*:file:($projects)"
    _files -W ${PROJECT_PATHS}/
    #_files -W $WORK/charlas/
}

compdef _pj pj
