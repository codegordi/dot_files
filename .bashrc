## .bashrc

## I hold the following 5 commands in my .profile (MacOS); you may choose to leave here
#export PATH=/usr/local/bin:$PATH

#nano ~/.bashrc    
export VIRTUALENVWRAPPER_PYTHON="/usr/local/bin/python3"
export VIRTUALENVWRAPPER_VIRTUALENV='usr/local/bin/virtualenv'
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
#source ~/.local/bin/virtualenvwrapper.sh  # for home MBP

 source_files() {
   ## some linux env may be set up to read .bashrc or other e.g. .profile 1st
   #if [ -f "$HOME/.bash_profile" ] ; then
   #  . ~/.bash_profile
   #fi
   local sources
   [ -n "$BASH" -o -n "$ZSH_NAME" ]  && sources="1" || sources="0"
   if [ "$sources" = "1" ] ; then
       . ~/.bash_aliases
       . ~/.bash_extras
       . ~/.bash_functions
       . ~/.aliases
       if [ -f "$HOME/.bash_amzn" ] ; then  # UPDATE <org>
         . ~/.bash_rtk
       fi
   fi
  }
  source_files

