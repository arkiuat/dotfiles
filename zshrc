# .zshrc gets run only for interactive shells

setopt append_history hist_expire_dups_first hist_reduce_blanks hist_verify
setopt interactive_comments
export RAKUDO_LINE_EDITOR='Readline'
export HISTSIZE=9999
export SAVEHIST=8999
export EDITOR='vi'
export LESS='-x4'
source ~/b/fix_path.sh
# if you want to add things to path, do it like this in zsh
#   typeset -U path
#   path=(~/bin ~/progs/bin $path)


#    real Neovim config file is in: ~/.config/nvim/init.vim
#
#   These are for NeoVim (but possibly misleading?)
#    system vimrc file: "$VIM/sysinit.vim"
#    fall-back for $VIM: "/usr/local/share/nvim"
#
#    type ":help init.vim" in the editor for further info
#
autoload -U colors && colors

# %# is prompt # when superuser and % when not
# %(3L.+.) adds a + to the prompt when SHLVL > 2
# %(?..(%?%)) prints any non-zero exit status of last command
export PS1="%{$fg[green]%}%(3L.+.)%(?..(%?%))%#%{$reset_color%} "

# %_> repeats whatever is waiting for further input instead of just >
export PS2="%{$fg[green]%}%_>%{$reset_color%} "

# RPS is rightside;  %D{%s} show POSIX time in secs; %~ shows the cwd
# %8>> truncates the timestamp to hectosecs
export RPS1="%{$fg[red]%}%~ %8>>%D{%m%d%H%M}%{$reset_color%} "
#export RPS1="%{$fg[red]%}%~ %8>>%D{%s}%{$reset_color%} "
#export RPS1="%{$fg[red]%}%~ %D{%s}%{$reset_color%} "

bindkey -v

alias ls='ls -F'   lss='ls -FlhS'   lt='ls -Flht' 
alias la='ls -AF' lla='ls -AFlhS' lta='ls -AFlht'
alias ll='ls -Flh'

# need args, so these will need to be implemented as functions
# alias            llh='ls -lS | head -22' lth='ls -lt | head -22'
