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
