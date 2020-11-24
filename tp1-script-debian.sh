#!/bin/sh
    ssh superv@adresseip-centos << INVITE
    /bin/bash script-recup-sys.sh
INVITE
    echo "script termine"

