# Utils
alias foldersize='du --max-depth=1 --human-readable | sort -h -r'

# Git aliases
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

alias gk='gitk --all &'
alias gdk='git diff | kompare - > /dev/null 2>&1 &'
alias gcmp='git checkout master && git pull'
alias gfr='git fetch && git rebase origin/master'
alias gbdAll="git branch | grep -v "master" | xargs git branch -D" # This one is longer to prevent acidental confusion misuse


# Testing aliases
function unit-test {
    if [[ $# = 0 ]]; then
        ./node_modules/mocha/bin/mocha test/unit
    else
        ./node_modules/mocha/bin/mocha $@
    fi
}
function client-test {
    if [[ $# = 0 ]]; then
        rspec --color --default-path test test/client/*
    else
        rspec --color --default-path test $@
    fi
}
alias client-test-chrome="CHROME=1 client-test"
