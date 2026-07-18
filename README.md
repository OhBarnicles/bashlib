# bashlib

## read in core library
source /opt/bashlib/core.sh

## alias to grep existing functions in library
alias libhelp="grep -E '^[a-z_]+\(\)' /opt/bashlib/core.sh | sed 's/() {//'"
