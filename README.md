# anonsurf-arm

**This project is in BETA. a GUI will be created for it eventually, as it is still in development.**


ParrotSec's anonsurf and stealth, ported to work with ARM Linux. Tested on Raspberry Pi OS (32bit), TwisterOS (32bit), and Kali Linux ARM64;

## [Installation](https://github.com/chunky-milk/pi-bashscripts-files/blob/main/anonsurf/README.md)
This package comes with an installer that makes things extremely easy:

```bash
wget https://raw.githubusercontent.com/chunky-milk/anonsurf-arm/main/installer.sh
sudo chmod +x installer.sh
sudo ./installer.sh
```

Once the installer is complete, you will be able to use both the anonsurf and pandora modules.

## How to use this repo

This repo contains the sources of both the anonsurf and pandora packages from ParrotSec combined into one.

A modification has been made in which the DNS servers have been changed to PrivateInternetAccess DNS servers.

## Usage
### Pandora
Pandora automatically overwrites the RAM when the system is shutting down. Pandora can also be ran manually:
```bash
pandora bomb
```

NOTE: This will clear the entire system cache, including active SSH tunnels or sessions.

### anonsurf
Anonsurf will anonymize the entire system under the tor network using IPTables. It will also allow you to start and stop i2p as well.

NOTE: DO NOT run this as ```service anonsurf $COMMAND```. Run this as ```anonsurf $COMMAND```

```bash
Usage:
 anonsurf {start|stop|restart|change|status}

 start - Start system-wide anonymous
          tunneling under TOR proxy through iptables
 stop - Reset original iptables settings
          and return to clear navigation
 restart - Combines "stop" and "start" options
 change - Changes identity restarting TOR 
 status - Check if AnonSurf is working properly
----[ I2P related features ]----
 starti2p - Start i2p services
 stopi2p - Stop i2p services
```

TODO
[ ] Automatically make desktop entries at install
[ ] Uninstall script
