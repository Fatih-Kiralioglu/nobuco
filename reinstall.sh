#!/usr/bin/env bash
# uninstall and reinstall all the deepfilter packages
set -e  # stop on errors
previous_dir=$(pwd)
pip uninstall nobuco -y
cd ${audio_ml_home}/audio_ml/experimental/nobuco_git
# install with no deps, we want to make sure the conda has solved these dpendancies not resolve them here.
python -m pip install . --no-deps
cd $previous_dir
