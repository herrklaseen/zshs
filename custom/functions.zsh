function _update_ruby_version()
{
  typeset -g ruby_version=''
  if which rbenv &> /dev/null; then
    ruby_version=" | $(rbenv version | sed -e "s/ (set.*$//")"
  fi
}
