export BASH_SILENCE_DEPRECATION_WARNING=1 # macos catalina zsh nonsense
export DOCKER_ORG=ohffs
export DOCKER_BUILDKIT=1
export PATH="./vendor/bin:~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/Users/billy/.composer/vendor/bin:/usr/local/go/bin"
export LS_OPTS="--color=auto"
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export CDPATH=~/Documents/code:~/Desktop
export PS1='\W\$ '

alias ppj="python -mjson.tool"
alias rmtor="rm *.torrent"
alias cdd="cd ~/Downloads"
alias cdc="cd ~/Documents/code"
alias art="php artisan "
alias tink="php artisan tinker"
alias mfs="php artisan migrate:fresh && php artisan db:seed --class=TestDataSeeder"
alias puf="phpunit --filter "
alias duf="art dusk --filter "
alias nah='git reset --hard && git clean -df'
alias code='/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code'
alias pcat='pygmentize -f terminal256 -O style=native -g'
alias runmysql="docker run --rm -e MYSQL_ROOT_PASSWORD=homestead -e MYSQL_DATABASE=homestead -e MYSQL_USER=homestead -e MYSQL_PASSWORD=homestead -p 3306:3306 mysql:5.7"
alias envdiff="diff --new-line-format='' --unchanged-line-format='' <(sort .env | egrep -v '^#' | sed -e 's/=.*//') <(sort .env.example | egrep -v '^#' | sed -e 's/=.*//')"

export BAT_THEME=ansi-dark

if [ -f ${HOME}/.git-completion.bash ]; then
   . ${HOME}/.git-completion.bash
fi
 
function iterm2_print_user_vars() {
  local context=`docker context ls | grep '*' | cut -f1 -d' '`
  iterm2_set_user_var docker-context "🐳 $context"
}

. ${HOME}/.git-status.bash
#. ${HOME}/.docker-context.bash


source ~/Library/Preferences/org.dystroy.broot/launcher/bash/br
