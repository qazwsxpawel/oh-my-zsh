# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Super user
alias _='sudo'
alias please='sudo'

#alias g='grep -in'

# Show history
alias history='fc -l 1'

# List direcory contents
alias lsa='ls -lah'
alias ll='ls -l'
alias la='ls -lA'
alias sl=ls # often screw this up


#moje
# alias -g zrc="~/.zshrc"
# alias -g tconf="~/.tmux.conf"
# alias t='todo.sh -N'
alias t="tmux"
#alias ack='ack-grep -a --smart-case'
alias afind='ack -l'
# alias l='ls -htr | tail -n 1'
alias acer-tmux='ssh pawel@192.168.0.4 -t tmux a'
alias punch="python $HOME/Dropbox/bin/Punch.py"
alias -s jpg='eog'
alias -s png='eog'
alias clip='xclip -selection clipboard'
#alias fi='find . -iname'
#alias rrm='/bin/rm -i'
#alias rm='trash'

ace_serve() {
    if [[ "$2" == "tmux" ]]
    then
       opcja="-t tmux a"
    else
       opcja=""
    fi
    if [[ "$1" == "local" ]]
    then
       echo $opcja
       ssh pawel@192.168.0.4 "$opcja"
    else
       echo $opcja
       ssh pawel@79.184.73.1 "$opcja"
    fi
}
alias cheatsheet='less ~/.cheatsheet.sh' 
foundation() {
    compass create $proj -r zurb-foundation --using foundation
}

alias pdfgrep="pdfgrep -C line"

gnt() {
    geeknote create --title $1 --content $2
}

#for tmux vim and solarized to work corectly
alias tmux='TERM=screen-256color-bce tmux' #solarized_change
alias mux='TERM=screen-256color-bce mux' #solarized_change

#alias vim='/usr/local/Cellar/macvim/7.4-72/MacVim.app/Contents/MacOS/Vim'
alias ivm='vim'
alias vmi='vim'
alias iv='vim'
#alias macvim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias macvim='/usr/local/Cellar/macvim/7.4-73/MacVim.app/Contents/MacOS/Vim'

#django
# make no sense in VM
# alias ma='python manage.py'
# alias rs='python manage.py runserver'

alias faker='python -m faker'

#vagrant
alias vssh="vagrant ssh"
alias vup="vagrant up"
alias vhalt="vagrant halt"
alias vprov="vagrant provision"
alias vrel="vagrant reload"
alias c="clear"
alias clear=" clear"
alias f="ag --files-with-matches -g"
alias ...='cd ../../'
alias gti="git"
alias pingme="osascript -e 'display notification \"Done\" with title \"Done\"' && say Done"


# set/cd to root directory of a current project
r () {
    if [[ $1 == "set" ]]; then
        export CURRENT_PROJECT_ROOT=$(pwd)
        echo $CURRENT_PROJECT_ROOT
    fi
    cd $CURRENT_PROJECT_ROOT
}

# global aliases
alias -g G="| grep "
alias -g C="| wc -l"
alias -g X="| xargs -J %"
alias -g X0="| xargs -0 -J %"
alias -g ND="*(/om[1])"
alias -g NF="*(.om[1])"
alias -g N="*(om[1])"
alias -g L="| less"
