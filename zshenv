# .zshenv gets run for every shell
# so environent variables that are useful for non-interactive shells go here
# the others go in .zshrc (which only gets run for interactive shells)
# 
# I *think* $PATH is used in non-interactive shells sometimes: that's the only reason I'd put it here
# but most of my path gets munged by ~/bin/fix_path.sh which is called from .zshrc, I don't remember why
#
# on the other hand, in the ordinary course of things, environment variables once set are inherited by every forked
# subshell, so rather than having them reset at every shell invocation (as here) or every time a new interactive
# shell is started (as in .zshrc), I *think* they could all be set one-time only in .zlogin or .zprofile,
# neither of which currently has anything in it (they look like this one here, all comments)
eval "$(/Users/arkiuat/.rakubrew/bin/rakubrew init Zsh)"
