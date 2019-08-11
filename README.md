h1. Usage

Add something like this to .bashrc

alias elm='docker run -it --rm -v "$(pwd):/code" -w "/code" -e "HOME=/tmp" -u $UID:$GID -p 8000:8000 matzko/elm_tools elm'
alias elm-generate='docker run -it --rm -v "$(pwd):/code" -w "/code" -e "HOME=/tmp" -u $UID:$GID matzko/elm_tools elm-generate'
alias elm-format='docker run -it --rm -v "$(pwd):/code" -w "/code" -e "HOME=/tmp" -u $UID:$GID matzko/elm_tools elm-format'
alias elm-analyse='docker run -it --rm -v "$(pwd):/code" -w "/code" -e "HOME=/tmp" -u $UID:$GID matzko/elm_tools elm-analyse'
