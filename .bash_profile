# ~/.bash_profile

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Source files in the given directory
source_dir()
{
    local dir="$1"
    if [[ -d $dir ]]; then
        local conf_file
        for conf_file in "$dir"/* ; do
            source "$conf_file"
        done
    fi
}

# Process global & local files
source_dir ${HOME}/.bash/
source_dir ${HOME}/.bash.local/
