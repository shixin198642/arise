#!/bin/bash

CWD=`pwd`

UNAME=`uname -a`
UBUNTU=`echo $UNAME | grep Ubuntu`
MAC=`echo $UNAME | grep MacBook`

if [ -n "$UBUNTU" ]; then
    echo "This is ubuntu system."

    echo "Start to sync emacs..."
    EMACS_MAC_HOME=$CWD/emacs/linux
    rm -fr $EMACS_MAC_HOME
    mkdir -p $EMACS_MAC_HOME
    cp ~/.emacs $EMACS_MAC_HOME
    cp -r ~/emacs/* $EMACS_MAC_HOME

elif [ -n "$MAC" ]; then
    echo "This is mac os system."

    echo "Start to sync emacs..."
    EMACS_MAC_HOME=$CWD/emacs/mac
    rm -fr $EMACS_MAC_HOME
    mkdir -p $EMACS_MAC_HOME
    cp ~/.emacs $EMACS_MAC_HOME
    cp -r ~/emacs/* $EMACS_MAC_HOME
fi
