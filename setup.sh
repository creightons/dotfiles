#!/bin/bash

# Get relative filepath to this script, change to the 
# directory, and get the absolute file path.
#
# Get value by capturing an echo: VAR=$(getWorkingDirectory)
function getWorkingDirectory {
    RELATIVE_FILEPATH=$(dirname $BASH_SOURCE)
    cd $RELATIVE_FILEPATH
    ABSOLUTE_FILEPATH="$(pwd)"
    echo $ABSOLUTE_FILEPATH
}

DIR=$(getWorkingDirectory)

# Setup symlinks to files in this directory
ln -fs $DIR/.bashrc ~/.bashrc
ln -fs $DIR/.vimrc ~/.vimrc
ln -fs $DIR/.tmux.conf ~/.tmux.conf
