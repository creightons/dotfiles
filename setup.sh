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

SCRIPT_DIR=$(getWorkingDirectory)

# Setup symlinks to files in this directory
ln -fs $SCRIPT_DIR/.bashrc ~/.bashrc
ln -fs $SCRIPT_DIR/.vimrc ~/.vimrc
ln -fsd $SCRIPT_DIR/.vim ~/.vim
ln -fs $SCRIPT_DIR/.tmux.conf ~/.tmux.conf

# Running this script more than once can generate a
# duplicate .vim symlink; Remove any duplicates
DUPLICATE_VIM_FOLDER="$SCRIPT_DIR/.vim/.vim"
if [ -L $DUPLICATE_VIM_FOLDER ]; then
    rm $DUPLICATE_VIM_FOLDER
fi

# Change to the script directory
ORIG_DIR=$(pwd)
cd $SCRIPT_DIR

# Install submodules
git submodule init
git submodule update

# Return to original directory
cd $ORIG_DIR
