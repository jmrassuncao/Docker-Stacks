#!/bin/bash
#  ___  _    _          _ __      
# / __|| |_ | |_   ___ | '_ \ ___ 
# \__ \|  _||   \ / _ \| .__// -_)
# |___/ \__||_||_|\___/|_|   \___|

### HOW TO USE:
# clear; bash -c "$(wget -qLO - https://git.sthope.dev/sthope/Sthope-Servers/raw/branch/master/HomeLAB/portainer_ee.sh)"

mkdir -p ~/docker/portainer

docker run -d \
    -p 8000:8000 \
    -p 9443:9443 \
    --name=portainer \
    --restart=always \
    --net=STHOPE \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /home/sthope/docker/portainer:/data \
    --label=com.centurylinklabs.watchtower.enable=true \
    portainer/portainer-ee:latest \
    --logo "https://lh3.googleusercontent.com/pw/AM-JKLUmZSrSIMzCgDhEP-zF1uE2mTe1O7a5vCe3KVin_sqzx-qaqs7CXpzCfbJ_bAF481578CpLOi1tazFTFoze7_AnjnoDG0FOnyZawQGhtlCOEPjLXaD8AofNpubcVg49hvpYfdkEn_JbT1Ktdrr0NxkXGQ=w577-h350-no?authuser=0"
