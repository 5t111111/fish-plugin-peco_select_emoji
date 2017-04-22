function peco_select_emoji -d "Peco source to select emoji"
    emoji_codes | peco_wrapper "EMOJI>" | read emoji

    if test -n "$emoji"
        set -l keyword :(echo $emoji | awk '{ print $2 }'):
        commandline -i $keyword
    end
end
