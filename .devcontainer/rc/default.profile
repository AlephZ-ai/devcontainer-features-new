# shellcheck shell=bash
# shellcheck source=/dev/null
# System-wide .profile for sh(1)

if [[ -x /usr/libexec/path_helper ]]; then
    eval "$(/usr/libexec/path_helper -s)"
fi

if [[ "${BASH-no}" != "no" ]]; then
    [[ -r /etc/bashrc ]] && source /etc/bashrc
fi
