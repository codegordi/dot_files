## .bashrc

export VIRTUALENVWRAPPER_PYTHON="/usr/local/bin/python"
source /usr/local/bin/virtualenvwrapper.sh

. ~/.aliases

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
       if [ -f "$HOME/.bash_<org>" ] ; then  # UPDATE <org>
         . ~/.bash_<org>
       fi
   fi
  }
  source_files

