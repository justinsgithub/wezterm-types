#
# Print all Lua files containing the specified regex
#

[[ $# -eq 0 ]] && exit 127

error() {
    local TXT=("$@")
    printf "%s\n" "${TXT[@]}" >&2
    return 0
}

# Kill the execution. By default it exits with code `1`.
# Usage: usage [[N] [text] [text] [...] ...]
die() {
    local EC=0
    if [[ $# -ge 1 ]]; then
        if [[ "$1" =~ ^-?[1-9]?[0-9]+$ ]]; then
            EC=$1
            shift
        fi
    fi
    if [[ $# -gt 0 ]]; then
        local TXT=("$@")
        if [[ $EC -eq 0 ]]; then
            printf "%s\n" "${TXT[@]}"
        else
            error "${TXT[@]}"
        fi
    fi

    exit "$EC"
}

QRY="$1"
TXT=()

search_qry() {
    local IFS
    local FPATHS

    IFS=$'\n' FPATHS=($(find . -type f -regex '.*\.lua$' | cut -d '/' -f2-))
for F in "${FPATHS[@]}"; do
    if grep -E "$QRY" "$F" &> /dev/null; then
        TXT+=("$F")
    fi
done
}

search_qry

if [[ ${#TXT[@]} -eq 0 ]]; then
    die 1
fi

printf "%s\n" "${TXT[@]}"

die 0
