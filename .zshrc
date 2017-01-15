#
# basic zsh config with bits from grml and various other places
#


#
# history
#
HISTSIZE=2000
SAVEHIST=2000
HISTFILE=~/.zsh_history
setopt append_history
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt extended_history
setopt interactive_comments


#
# other options
#
setopt autocd
setopt longlistjobs
setopt promptsubst # required for git plugin
setopt hash_list_all
setopt nohup
setopt pushd_ignore_dups

# wordstyle
#autoload -U select-word-style
#select-word-style bash


#
# colors
#
autoload -U colors && colors
export ZLS_COLORS=1
eval "$(dircolors -b)"


#
# completions
#
zmodload zsh/complist
autoload -Uz compinit && compinit

# start menu completion only if it could find no unambiguous initial string
zstyle ':completion:*:correct:*'       insert-unambiguous true
# do not immediately correct command line but list possibe corrections
zstyle ':completion:*'                 group-order original corrections
zstyle ":completion:*"                 auto-description "specify: %d"
zstyle ":completion:*"                 completer _expand _complete _approximate
zstyle ":completion:*:default"         list-colors ${(s.:.)LS_COLORS}
zstyle ":completion:*"                 list-colors ""
zstyle ":completion:*"                 menu select=2
# offer capital case suggestions when typing letter case, but not vice versa
zstyle ":completion:*"                 matcher-list "" "m:{a-z}={A-Z}"
zstyle ":completion:*:descriptions"    format "%F{white}%d%f"
zstyle ':completion:*:warnings'        format '%F{white}no matches for %d%f'
# group suggestions by context
zstyle ":completion:*"                 group-name ""
zstyle ':completion:*'                 special-dirs true
zstyle ":completion:*"                 verbose true
zstyle ':completion:*:-command-:*:'    verbose false
zstyle ':completion:*:processes'       command 'ps -au$USER'
zstyle ':completion:*:processes-names' command 'ps c -u ${USER} -o command | uniq'


#
# keybindings
#

up-line-or-local-history() {
    zle set-local-history 1
    zle up-line-or-history
    zle set-local-history 0
}
down-line-or-local-history() {
    zle set-local-history 1
    zle down-line-or-history
    zle set-local-history 0
}
zle -N up-line-or-local-history
zle -N down-line-or-local-history


# Use emacs-style keybindings
bindkey -e

# arrows only use local history
#bindkey "${key[Up]}" up-line-or-local-history
#bindkey "${key[Down]}" down-line-or-local-history
bindkey "^[[A"   up-line-or-local-history
bindkey "^[[B"   down-line-or-local-history

# ctr + arrows use shared history
bindkey "^[[1;5A" up-line-or-history
bindkey "^[[1;5B" down-line-or-history

# word navigation
# urxvt with tmux
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# urxvt only
bindkey "^[Oc"    forward-word
bindkey "^[Od"    backward-word

# home, end, delete
# urxvt with tmux
bindkey "^[[1~"  beginning-of-line
bindkey "^[[4~"  end-of-line
bindkey "^[[3~"  delete-char

# urxvt only
bindkey "^[[7~"  beginning-of-line
bindkey "^[[8~"  end-of-line

# tilda
bindkey "^[OH"   beginning-of-line
bindkey "^[OF"   end-of-line
bindkey "^[[H"   beginning-of-line
bindkey "^[[F"   end-of-line


#
# prompt
#
autoload -U promptinit && promptinit
PS1="[%{$fg_bold[green]%}%n%b@%{$fg_bold[green]%}%m%b]%{$fg_bold[blue]%}%~%b%(!.#.>) "


#
# aliases
#
alias tmux="tmux -2"
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias cal="ncal -M -b"

# distro-specific
DISTRO=$(grep "ID=" /etc/os-release | cut -d '=' -f 2)
if   [ "$DISTRO" = "debian" ]; then
    alias cal="ncal -M -b"
elif [ "$DISTRO" = "gentoo" ]; then
    alias cal="cal -m"
elif [ "$DISTRO" = "fedora" ]; then
    alias cal="cal -m"
fi

#
# Env
#
export PATH=$PATH:$HOME/bin
export EDITOR=vim
export TIMEFMT=$'\nreal\t%*E\nuser\t%*U\nsys\t%*S'

# git-related
unset SSH_ASKPASS


#
# source syntax highlighting script (should be last)
#
# obtain from https://github.com/zsh-users/zsh-syntax-highlighting
# or install appropriate package
for dir in /usr/share /usr/share/zsh/site-contrib /opt ; do
    if [ -f $dir/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
        source $dir/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
        break
    fi
done

