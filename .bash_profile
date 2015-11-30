if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

killscreens () {
	screen -ls | grep Detached | cut -d. -f1 | awk '{print $1}' | xargs kill
}

#This will only be necessary for iterm 2 I believe
source ~/.bashrc
