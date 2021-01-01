export PIPENV_VENV_IN_PROJECT=1
export PIPENV_DONT_LOAD_ENV=1
export TERM="xterm-256color"
export DEFAULT_USER=`whoami`

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
# Add GO apps binaries to the path
export PATH=$PATH:~/app-binaries

# Zlib staff
export LDFLAGS="-L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include"

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools