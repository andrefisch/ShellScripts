# Download your readings more quickly:
# ex: sh downloadElijahReading.sh lisp http://landoflisp.com/source.html
# If wget is not installed on this MAC, install it
if [ ! -x /usr/local/bin/wget ] && [ ! -x /usr/bin/wget ] ; then
# if [ $words eq 1 ]; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew install wget --with-libressl
    echo "#######################################################################################################"
    echo "#                                Installed brew and wget, so ready to go!                             #"
    echo "#                        From now on when calling this script call it like this:                      #" 
    echo "#                  sh downloadElijahReading.sh lisp http://landoflisp.com/source.html                 #" 
    echo "#                    'lisp' should be replaced with file type you want to download                    #" 
    echo "# 'http://landoflisp.com/source.html' should be replaced by the web address you want to download from #"
    echo "#                                        HAPPY DOWNLOADING!                                           #"
    echo "#######################################################################################################"
    exit 1
fi

# Make sure both necessary variables are passed to the script
# $1 : file type
# $2 : website
if [ -z "$1" ] || [ -z "$2" ]
then 
    echo "#######################################################################################################"
    echo "#                            When calling this script call it like this:                              #" 
    echo "#                  sh downloadElijahReading.sh lisp http://landoflisp.com/source.html                 #" 
    echo "#                    'lisp' should be replaced with file type you want to download                    #" 
    echo "# 'http://landoflisp.com/source.html' should be replaced by the web address you want to download from #"
    echo "#                                        HAPPY DOWNLOADING!                                           #"
    echo "#######################################################################################################"
    exit 1
else 
    wget -r -l1 -A.$1 $2
fi
