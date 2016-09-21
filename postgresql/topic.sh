#!/usr/bin/env bash

install () {
    [ "$PLATFORM_S" = mac ] && brew services start postgresql
}