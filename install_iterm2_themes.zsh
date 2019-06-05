#!/bin/bash

DESTINATION=$1
CURRENT_DIRECTORY=$PWD
mkdir -p $DESTINATION

cd $DESTINATION && curl -O -J "https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Batman.itermcolors" && cd $CURRENT_DIRECTORY