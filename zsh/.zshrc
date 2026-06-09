# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/gba/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias la="ls -a"
alias reload="source ~/.zshrc"
alias off="shutdown now"
alias tos="tmuxifier s"

export PATH="$HOME/.local/share/bob/nvim-bin:$PATH"
export PATH="$HOME/.tmuxifier/bin:$PATH"
export EDITOR="nvim"

alias new-nb='f(){ local n="${1:-notebook}"; python3 -c "import nbformat; nbformat.write(nbformat.v4.new_notebook(), \"${n%.ipynb}.ipynb\")"; echo "Created ${n%.ipynb}.ipynb" }; f'

source ~/.tmuxifier/completion/tmuxifier.zsh
