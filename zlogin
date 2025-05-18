# I think this only gets run by login shells, and AFTER .zshrc does
#
# Login shells are an overlapping subset with interactive shells: 
# some are both, some are neither, and you can have login shells that 
# aren't interactive and interactive shells that aren't login shells
#
# So far I have nothing that needs to be put in here instead of in .zshrc
#
# I guess it could be useful for things that only need to be done once and 
# then are inherited by every forked subshell? 
# Then they wouldn't get redone by .zshrc every time a new shell is started 
# (e. g. as in screen)

