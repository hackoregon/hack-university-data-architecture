

## Installation

### First install the vagrant package.

    $ vagrant up && vagrant ssh


### Now from inside the VM:

    $ bash /vagrant/installPackages.sh
    $ source ~/.bash_profile


## Notes

* You should be able to run "vagrant package" to create a vagrant box that can be passed around to other people.  Unfortunately, these are rather large (~1GB) and probably aren't suited for git.  DAT may be a good option to share the boxes.
* The Anaconda installation is done with Miniconda, which is a very barebones intallation.  If you want to add additional packages to the install script, you can modify the "installPackages.sh" file.  
* If you want to run a Jupyter Notebook, you can run "jupyter notebook" at the command line. You will then be able to access the notebook from the host browser at localhost:8888.
* These setup files were set up using Vagrant v1.8.6 and VirtualBox v5.1.6.  Earlier, unsuccessful, attempts were made with Vagrant v1.7 and VirtualBox v4.  If you have older versions of Vagrant or Virtualbox, you may have to upgrade.


Annoyances:

1. It seems like there should be a way to accomplish the last source command as part of the script but I don't know how to do it.
