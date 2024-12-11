is_image() {
    if [[ -z $1 ]]; then
        echo "Usage: is_image <file>"
        return 1
    fi

    local file="$1"
    [[ $(file -b --mime-type "$file") =~ ^text ]]

}
