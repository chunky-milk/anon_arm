read -p "Do you really want to boot yourself into the tor network (the darkweb) with Anonsurf? ";
if [ $REPLY == "y" ]; then
    echo "                                                                                                                            "
    echo "                                                                                                                            "
    echo "                           __.....__                                   .----.     .----._________   _...._         _..._    "
    echo "                       .-''         '.                                  \    \   /    / \        |.'      '-.    .'     '.  "
    echo "                      /     .-''"'-.  `.                                 '   '. /'   /   \        .'```'.    '. .   .-.   . "
    echo "                     /     /________\   \              __                |    |'    /     \      |       \     \|  '   '  | "
    echo "   _    _         _  |                  |           .:--.'.              |    ||    |      |     |        |    ||  |   |  | "
    echo "  | '  / |      .' | \    .-------------'          / |   \ |             '.   `'   .'      |      \      /    . |  |   |  | "
    echo " .' | .' |     .   | /\    '-.____...---.          `" __ | |              \        /       |     |\`'-.-'   .'  |  |   |  | "
    echo " /  | /  |   .'.'| |// `.             .'            .'.''| |               \      /        |     | '-....-'`    |  |   |  | "
    echo "|   `'.  | .'.'.-'  /    `''-...... -'             / /   | |_               '----'        .'     '.             |  |   |  | "
    echo "'   .'|  '/.'   \_.'                               \ \._,\ '/                           '-----------'           |  |   |  | "
    echo " `-'  `--'                                          `--'  `"                                                    '--'   '--' "
    echo "                                                                                                                            "
    sleep 1
    anonsurf start
    echo "Close this window to exit. When you want to stop Anonsurf, go to the menu > internet > anonsurf stop."
    sleep infinity
fi
