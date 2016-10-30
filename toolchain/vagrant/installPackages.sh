#1/bin/bash

bash /vagrant/Miniconda3-latest-Linux-x86_64.sh -b
echo "# Added for Miniconda" >> ~/.bash_profile
echo "export PATH=\"$HOME/miniconda3/bin:\$PATH\"" >> ~/.bash_profile

. ~/.bash_profile

conda install -y jupyter
conda install -y pandas
conda install -y seaborn scikit-learn

mkdir .jupyter
cp /vagrant/jupyter_notebook_config.py .jupyter