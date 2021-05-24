#!/usr/bin/env bash

origin_dir=$(pwd)

function install_configuration_files()
{
    # this will make symbolic links to
    # the files on the repository
    ln -s ${origin_dir}/bashrc ~/.bashrc;
    ln -s ${origin_dir}/aliases ~/.bash_aliases;
    ln -s ${origin_dir}/functions ~/.bash_functions;
    ln -s ${origin_dir}/profile ~/.bash_profile
    # if you delete the repostiory the configuration
    # files will be gone
}

if [ -d .git ]; then
    # we're on the git directory
    echo "Installing the files...";
    install_configuration_files;
else
    echo "Plase run from the root of the cloned directory."
fi
