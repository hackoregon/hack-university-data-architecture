#!/bin/bash

LOGFILE=~/installPackages.log

echo "Installing Miniconda..."
bash /vagrant/Miniconda3-latest-Linux-x86_64.sh -b >> $LOGFILE
echo "# Added for Miniconda" >> ~/.bash_profile
echo "export PATH=\"$HOME/miniconda3/bin:\$PATH\"" >> ~/.bash_profile

. ~/.bash_profile

echo "Installing Jupyter..."
conda install -y jupyter >> $LOGFILE

echo "Installing Pandas..."
conda install -y pandas >> $LOGFILE

echo "Installing scikit and seaborn..."
conda install -y seaborn scikit-learn >> $LOGFILE

mkdir ~/.jupyter
cp /vagrant/jupyter_notebook_config.py ~/.jupyter

echo "Installation complete"
