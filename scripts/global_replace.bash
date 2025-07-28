#
# TODO!: Implement option parsing
#

# Parts of code yanked from a custom build script I made

# Print to `STDERR`, separate each arg with newline
error() {
    local TXT=("$@")
    printf "%s\n" "${TXT[@]}" >&2
    return 0
}

# Check whether a console command (or multiple) exists
# Returns 0 if all commands are found
# Returns 1 if at least one command is not found
# Returns 127 if no arguments were given
_cmd() {
    [[ $# -eq 0 ]] && return 127

    local EC=0

    while [[ $# -gt 0 ]]; do
        if ! command -v "$1" &> /dev/null; then
            EC=1
            break
        fi

        shift
    done

    return "$EC"
}

# Terminate the script, optionally set the exit code and abort message
die() {
    local EC=1

    if [[ $# -ge 1 ]] && [[ $1 =~ ^(0|-?[1-9][0-9]*)$ ]]; then
        EC=$1
        shift
    fi

    if [[ $# -ge 1 ]]; then
        local TXT=("$@")
        if [[ $EC -eq 0 ]]; then
            printf "%s\n" "${TXT[@]}"
        else
            error "${TXT[@]}"
        fi
    fi

    exit "$EC"
}

# TODO: Make help/usage function

! _cmd 'find' && die 127 "\`find\` is not in PATH."

[[ $# -eq 0 ]] && die 127 "No arguments were given. Aborting"

EC=0

while [[ $# -gt 0 ]]; do
    if ! [[ "$1" =~ ^s/.+/.*/g?.*$ ]] ; then
        error "Pattern \`$1\` not valid. Skipping..."
        EC=1
        shift
        continue
    fi

    REGEX="$1"

    printf "\n%s\n" "Applying regex ${REGEX}:"
    for F in $(find . -type f -regex '.*\.lua$' | cut -d '/' -f2-); do
        echo -e "    ==> ${F}"
        if ! sed -i "${REGEX}" "$F"; then
            error "Unable to replace contents of file \`$F\`. Skipping file"
            EC=1
            continue
        fi
    done

    shift
done

die "$EC"
