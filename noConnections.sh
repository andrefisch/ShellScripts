# turn off wifi and blue tooth
nmcli nm wifi off
echo "Wifi off"
rfkill block bluetooth
echo "Bluetooth off"
