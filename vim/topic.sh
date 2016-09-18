install () {

    # Install vundle
    local vundle="~/.vim/bundle/Vundle.vim"
    [ ! "$vundle" ] && git clone https://github.com/VundleVim/Vundle.vim.git "$vundle"

    # Install plugins with vundle
    vim +PluginInstall +qall

    # Compile you complete me
    cd ~/.vim/bundle/YouCompleteMe
    [ ! -f compiled.dotsys ] && ./install.py --tern-completer
    if [ $? -eq 0 ]; then
        touch compiled.dotsys
        info "If you need to recompile YouCompleteMe you will have to
      $spacer manually run ~/.vim/bundel/YouCompleteMe/install.py"
    fi


}


upgrade () {
    vim +PluginUpdate +qall
}


update () {
    vim +PluginClean +qall
}

"$@"

