install () {

    # Install vundle
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

    # Install plugins with vundle
    vim +PluginInstall +qall

    # Compile you complete me
    cd ~/.vim/bundle/YouCompleteMe
    ./install.py --tern-completer

}


upgrade () {
    vim +PluginUpdate +qall
}


update () {
    vim +PluginClean +qall
}

"$@"

