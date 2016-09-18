#!/bin/bash

install () {

    #install fonts  (DejaVu, Hack, Roboto seem to work best)
    curl -L https://github.com/powerline/fonts/raw/master/DejaVuSansMono/DejaVu%20Sans%20Mono%20for%20Powerline.ttf -o ~/Library/Fonts/Powerline_DejaVu.ttf
    curl -L https://github.com/powerline/fonts/raw/master/Hack/Hack-Regular.ttf -o ~/Library/Fonts/Powerline_Hack.ttf
    curl -L https://github.com/powerline/fonts/raw/master/DejaVu%20Sans%20Mono%20for%20Powerline.ttf -o ~/Library/Fonts/Powerline_Droid.ttf
    curl -L https://github.com/powerline/fonts/raw/master/RobotoMono/Roboto%20Mono%20for%20Powerline.ttf -o ~/Library/Fonts/Powerline_Roboto.ttf
    return $?

}