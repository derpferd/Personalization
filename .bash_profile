if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

#This will only be necessary for iterm 2 I believe
source ~/.bashrc