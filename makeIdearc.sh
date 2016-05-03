rm ~/.ideavimrc
# add the heading above MISC SETTINGS
echo '"""""""""""""""""' >> ~/.ideavimrc
sed -n '/MISC SETTINGS/,/}}}/p' ~/.vimrc >> ~/.ideavimrc
# awk '/MISC SETTINGS/,/}}}/ { print }' data
# add the heading above MAPPINGS
echo '\n""""""""""""' >> ~/.ideavimrc
sed -n '/MAPPINGS/,/}}}/p' ~/.vimrc >> ~/.ideavimrc
# awk '/MAPPINGS/,/}}}/ { print }' data
