#!/usr/bin/env bash

for i in common client server web ; do
    pip uninstall -y devpi-$i
done
for i in common client server web ; do
    (cd $i ; pip install -e .)
done

# install some deps for testing
pip install -U PdbEditorSupport Sphinx pytest mock webtest pytest-cov pytest-flakes pytest-pdb pytest-pep8 pytest-timeout beautifulsoup4 tox wheel
