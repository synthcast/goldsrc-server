# Goldsource server for Half-Life and Counter-Strike 1.6 (Steam Version)
### A simple script that sets up a dedicated goldsrc server for hl and cs. Fixes issues with SteamCMD and runs on DigitalOcean Droplets.

# Usage:
Run the script by typing `./hldm.sh` and wait for it to finish. After that you're pretty much ready to go. `cd` into `server-files` and execute `hlds_run` with the parameters that you would like following this format: `./hlds_run -console -game <game/mod folder> +maxplayers <2-32> +map <map> +ip <your ip> +port 27015`. 

# Examples & Tips:
### Examples:
`./hlds_run -console -game valve +maxplayers 10 +map crossfire +ip 192.168.1.1 +port 27015`
* This runs a Half-Life server on the following address: `192.168.1.1:27015`, on the map crossfire with the player limit set to ten.
 
 `./hlds_run -console -game cstrike +maxplayers 10 +map de_dust2 +ip 192.168.1.1 +port 27015`
 * And this runs a Counter-Strike server on de_dust2 with the same address, port and player limit.

### Tips & notes:
* If you're running this through ssh, for example a DigitalOcean Droplet, remember to add the `ServerAliveInterval` option when connecting to the server, so that you don't get a broken pipe error. 
* Also note that that the server protocol for this is 48, so if your client (game) is running an older version you won't be able to connect.

