#!/usr/bin/env bash

install () {
  xcode-select --install
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew tap homebrew/versions
  brew tap homebrew/dupes
  brew tap Goles/battery
  brew install $(get_package_list "$manager")
}