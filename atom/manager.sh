#!/bin/bash

install () {
  apm install "$@" -y
}

uninstall () {
  apm uninstall "$@" -y
}

upgrade () {
  apm upgrade "$@" -y
}

freeze () {
  apm list "$@"
}


update () {
  apm update
}

search () {
  apm search "$@" -y
}

"$@"
