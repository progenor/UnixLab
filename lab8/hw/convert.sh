#!/usr/bin/env bash

interactive=false

if [[ "$1" == "-i" ]]; then
  interactive=true
  shift
fi

inputFolder="$1"
outputFolder="$2"

if [[ ! -d "$inputFolder" ]]; then
  echo "Input  not a folder!"
  exit 1
fi
if [[ ! -d "$outputFolder" ]]; then
  mkdir outputFolder
fi

for file in "$inputFolder"/*.jpg; do
  if [ ! -e "$file" ]; then
    echo "No jpg files in directory"
    continue
  fi

  oldName=$(basename "$file" .jpg)
  newFile="$oldName.png"

  if $interactive; then

    dimension=$(identify -format "%w%h" "$file")
    width=$(echo "$dimension" | cut -dx -f1)
    height=$(echo "$dimension" | cut -dx -f2)

    read -p "New width: " newWidth
    read -p "New height " newHeight

    if [[ -z "$newWidth" || -z "$newHeight" ]]; then
      newWidth=$width
      newHeight=$height

    elif [[ -z "$newWidth" ]]; then
      newHeight=$((newWidth * height / width))

    elif [[ -z "$newHeight" ]]; then
      newWidth=$((width * newWidth / height))
    fi

    if magick "$file" -resize "$newWidth"x"$newHeight" "$outputFolder/$newFile"; then
      echo "Successfully converted and changed resolution"
    else
      echo "Something went wrong!"

    fi

  else
    if magick "$file" "$outputFolder/$newFile"; then
      echo "Successfully converted!"
    else
      echo "Something went wrong!"
    fi
  fi
done
