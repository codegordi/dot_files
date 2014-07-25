## .bashrc

## I hold the following 5 commands in my .profile (MacOS); you may choose to leave here
#export PATH=/usr/local/bin:$PATH

#nano ~/.bashrc    
#source /usr/local/bin/virtualenvwrapper.sh
#export VIRTUALENVWRAPPER_PYTHON="/usr/local/bin/python"
#export WORKON_HOME=$HOME/.virtualenvs


 source_files() {
   if [ -f "$HOME/.bash_profile" ] ; then
     . ~/.bash_profile
   fi
   local sources
   [ -n "$BASH" -o -n "$ZSH_NAME" ]  && sources="1" || sources="0"
   if [ "$sources" = "1" ] ; then
       . ~/.bash_aliases
       . ~/.bash_extras
       . ~/.bash_functions
       . ~/.aliases
       if [ -f "$HOME/.bash_rtk" ] ; then  # UPDATE <org>
         . ~/.bash_rtk
       fi
   fi
  }
  source_files

