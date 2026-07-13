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


# color output
#log_info()  { echo -e "${BLUE}[*]${NC} $1"; }
#log_ok()    { echo -e "${GREEN}[+]${NC} $1"; }
#log_warn()  { echo -e "${YELLOW}[!]${NC} $1"; }
#log_err()   { echo -e "${RED}[-]${NC} $1"; }
