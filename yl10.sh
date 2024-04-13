#!/bin/bash
#yl10 - serverite töö kontroll
#autor: Jaanika Haki
#loodud: 13.04.2024


# serverite IP-aadressite määramine
servers=("10.100.0.70" "10.100.0.40" "10.100.0.21")

# funktsioon, mis kontrollib kas server on võrgus või ei
# kui on, siis kontrollib ka serveri töösoleku aega (alates mis kp ja kellast)
check_servers() {
	for server in "${servers[@]}"; do
	    if ping -c 1 -W 1 "$server" &> /dev/null; then
		echo "Server aadressiga $server on võrgus kättesaadav"
		uptime=$(ssh student@$server "uptime -s")
		echo "Server on töös olnud alates:"
		echo "$uptime"
	    else
		echo "Server aadressiga $server pole võrgus kättesaadav :("
	    fi
	done
}

# funktsioon määratud, nüüd käivitame selle lihtsa reaga
check_servers
