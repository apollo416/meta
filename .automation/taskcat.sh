#/bin/bash

python_path=$(which python3)
temp_path=$(mktemp setup-taskat-XXX)

$python_path --version
venv_path="$temp_path/.venv"
$python_path -m venv "$venv_path"

bin_path="$venv_path/bin"

source "$bin_path/activate"
python_path="$bin_path/python"

$python_path -m pip install --upgrade pip
$python_path -m pip install --upgrade setuptools wheel
$python_path -m pip install --upgrade taskcat
