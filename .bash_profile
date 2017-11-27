alias ll='ls -l'
alias lld='ls -ld */'

# Git branch in prompt
parse_git_branch() {

        git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}

export PS1='\u@\h \e[0;34m\W\e[m\[$(tput sgr0)\]\e[0;32m$(parse_git_branch)\e[m '

# Globally installed composer packages
export PATH=~/.composer/vendor/bin:$PATH
