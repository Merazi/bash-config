#!/usr/bin/env bash

__origin=$(pwd)

function __install_configuration_files()
{
    # this will make symbolic links to
    # the files on the repository
    ln -s ${__origin}/bashrc ~/.bashrc;
    ln -s ${__origin}/aliases ~/.bash_aliases;
    ln -s ${__origin}/functions ~/.bash_functions;
    # if you delete the repostiory the configuration
    # files will be gone
}

if [ -d .git ]; then
    # we're on the git directory
    echo "Installing the files...";
    __install_configuration_files;
else
    echo "Plase run from the root of the cloned directory."
fi
