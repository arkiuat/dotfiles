
# as of 2024-02-08, the path was set to:
#/opt/homebrew/bin:/opt/homebrew/sbin:/opt/local/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin
#
# this doesn't include 
# /opt/homebrew/Cellar/rakudo-star/2024.01/share/perl6/site/bin 
# which is where zef seems to have installed App::Rak

# The com.apple.security.cryptexd directories are currently empty
# /System/Cryptexes/App/usr/bin currently contains only "safaridriver"
# /opt/local/bin:/opt/local/sbin were installed by MacPorts
# /opt/homebrew/bin:/opt/homebrew/sbin were installed by homebrew


eval "$(/opt/homebrew/bin/brew shellenv)"

# I had decided at some point that there was some package manager that 
# I liked as well as or better than homebrew. What are we going to do 
# about this? 

# Setting PATH for Python 3.12
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.12/bin:${PATH}"
export PATH
