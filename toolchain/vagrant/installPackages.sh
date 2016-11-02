#!/bin/bash

echo "Installing Miniconda..."
bash /vagrant/Miniconda3-latest-Linux-x86_64.sh -b
echo "# Added for Miniconda" >> ~/.bash_profile
echo "export PATH=\"$HOME/miniconda3/bin:\$PATH\"" >> ~/.bash_profile

. ~/.bash_profile

echo "Installing Jupyter..."
conda install -y jupyter

echo "Installing Pandas..."
conda install -y pandas

echo "Installing scikit and seaborn..."
conda install -y seaborn scikit-learn

mkdir ~/.jupyter
cp /vagrant/jupyter_notebook_config.py ~/.jupyter

echo "Installation complete"
