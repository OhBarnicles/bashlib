# Self-documenting library, gets all functions
help_lib() {
    grep -E '^[a-z_]+\(\)' "${LIB_PATH:-$HOME/.local/bin/bashlib}/core.sh" | sed 's/() {//'
}

require_root() {
    [[ $EUID -eq 0 ]] || { echo "This script must be run as root." >&2; exit 1; }
}

# colors
RED="\033[0;31m"
YELLOW="\033[0;33m"
GREEN="\033[0;32m"
BLUE="\033[0;34m"
NC="\033[0m"

format_status() {
    color=$1
    marker=$2
    string=$3
    echo -e "${BLUE}[$color$marker${BLUE}]${NC} $string" >&2
}

log_err() {
    format_status "${RED}" "!" "Error: $1"
    exit 1
}

log_info() {
    format_status "${YELLOW}" "-" "$1"
}

log_ok() {
    format_status "${GREEN}" "+" "$1"
}

create_sym_link() {
    SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"                                                                                                                       
    local SRC_FILE="$SCRIPT_DIR/$1"
    local LINKED_FILE="$2"

    ln -s "$SRC_FILE" "$LINKED_FILE"
}
