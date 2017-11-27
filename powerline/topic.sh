#!/bin/bash

install () {

    #install fonts  (DejaVu, Hack, Roboto seem to work best)
    [ ! -f ~/Library/Fonts/Powerline_DejaVu.ttf ] && curl -L https://github.com/powerline/fonts/raw/master/DejaVuSansMono/DejaVu%20Sans%20Mono%20for%20Powerline.ttf -o ~/Library/Fonts/Powerline_DejaVu.ttf
    [ ! -f ~/Library/Fonts/Powerline_Hack.ttf ] && curl -L https://github.com/powerline/fonts/raw/master/Hack/Hack-Regular.ttf -o ~/Library/Fonts/Powerline_Hack.ttf
    [ ! -f ~/Library/Fonts/Powerline_Droid.ttf ] && curl -L https://github.com/powerline/fonts/raw/master/DejaVu%20Sans%20Mono%20for%20Powerline.ttf -o ~/Library/Fonts/Powerline_Droid.ttf
    [ ! -f ~/Library/Fonts/Powerline_Roboto.ttf ] && curl -L https://github.com/powerline/fonts/raw/master/RobotoMono/Roboto%20Mono%20for%20Powerline.ttf -o ~/Library/Fonts/Powerline_Roboto.ttf

    if [ ~/Library/Fonts/Powerline_DejaVu.ttf ]; then
        success "installed powerline fonts : DejaVu, Hack, Droid, Roboto"
        info "You will need to select a 'for powerline' font in your terminal preferences"
        osascript -e "tell application \"Terminal\" to set the font name of window 1 to \"DejaVu Sams Mono for Powerline\""
        osascript -e "tell application \"Terminal\" to set the font size of window 1 to 12"
        return 0
    else
        return 1
    fi

}

"$@"
