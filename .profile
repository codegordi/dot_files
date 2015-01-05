
# make sure user-installed binaries take precedence
export PATH=/usr/local/bin:$PATH

# added by Anaconda 2.1.0 installer
export PATH="/Users/cgutierrez/anaconda/bin:$PATH"

## move to using conda : see Continuum docs
## note : will get venv>>workon error from .bash_extras
#export WORKON_HOME=.virtualenvs
#export VIRTUALENVWRAPPER_PYTHON=`which python`   #"/usr/local/bin/python"
#source virtualenvwrapper.sh
# $HOME/anaconda/lib/python2.7/site-packages

source ~/.bashrc

