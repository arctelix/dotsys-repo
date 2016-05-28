#!/usr/bin/env bash

install () {
  brew tap homebrew/versions
  brew tap homebrew/dupes
  brew tap Goles/battery
}

"$@"