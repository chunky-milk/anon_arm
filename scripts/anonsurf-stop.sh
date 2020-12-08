read -p "Do you want to turn off anonsurf? (y/n) ";
if [ $REPLY == "y" ]; then
    anonsurf stop
    echo "Close this window to exit."
    sleep infinity
fi
