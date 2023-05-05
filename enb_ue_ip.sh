#!/bin/bash

if [ "$1" = "eNB" ]; then 
	ip addr add 10.8.0.1/24 brd + dev oaitun_enb1
	ip addr add 10.8.1.1/24 brd + dev oaitun_enm1
	ip addr del 10.0.1.1/24 dev oaitun_enb1
	ip addr del 10.0.2.1/24 dev oaitun_enm1
else
    if [ "$1" = "UE" ]; then 
		ip addr add 10.8.0.2/24 brd + dev oaitun_ue1
		ip addr add 10.8.1.2/24 brd + dev oaitun_uem1
		ip addr del 10.0.1.2/24 dev oaitun_ue1
		ip addr del 10.0.2.2/24 dev oaitun_uem1
    fi
fi  

