#/bin/bash

python_path=$(which python3)

$python_path --version
$python_path -m venv .venv

source .venv/bin/activate
python -m pip install --upgrade pip
python -m pip install --upgrade setuptools wheel
python -m pip install --upgrade taskcat
taskcat test run
