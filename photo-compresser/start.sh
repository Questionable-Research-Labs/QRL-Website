pip3 install --upgrade -r requirements.txt
pip3 install --upgrade tkfilebrowser # Special file browser for linux, beacuse the defualt one is not usable

if [ -f "/etc/debian_version" ]; then
    REQUIRED_PKG="python3-tk"
    PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
    echo Checking for $REQUIRED_PKG: $PKG_OK
    if [ "" = "$PKG_OK" ]; then
    echo "No $REQUIRED_PKG. Installing $REQUIRED_PKG."
    sudo apt-get --yes install $REQUIRED_PKG 
    fi
else
    echo "Unsuported OS, please make sure you have installed python3 tkinter (apt: python3-tk)"
    read -p "Press [enter] to continue"
fi


echo "\n Running Python Script \n\n"
python3 main.py
read -p "Press [enter] to finish"
