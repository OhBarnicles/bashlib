# bashlib

## read in core library
mkdir -p "$HOME"/.local/bin
source "$HOME"/.local/bin/bashlib/core.sh

## alias to grep existing functions in library
alias libhelp="grep -E '^[a-z_]+\(\)' "$HOME"/.local/bin/bashlib/core.sh | sed 's/() {//'"
