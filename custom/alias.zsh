function git_current_branch() {
  git symbolic-ref HEAD 2> /dev/null | sed -e 's/refs\/heads\///'
}

alias ll='ls -al'
alias gla='git log --pretty="format:%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset" --graph --all'
alias reset_config='bundle exec rake db:drop db:create db:migrate && mysql kviberg-config-development -uroot < db/export.sql'
alias gpthis='git push origin HEAD:$(git_current_branch)'
alias ee='bundle exec'
alias ber='bundle exec rake'
