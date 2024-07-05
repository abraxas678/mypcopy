#!/bin/bash
sudo docker kill pcopy
sudo docker rm pcopy
[[ -z $1 ]] && sudo docker run --name pcopy -p 2586:2586 -v $HOME/.config/pcopy/server.conf:/config/server.conf docker.io/abraxas678/mypcopy --keyfile /home/abrax/.config/pcopy/server.key
[[ $1 = "local" ]] && sudo docker run --name pcopy -p 2586:2586 -v $HOME/.config/pcopy/server.conf:/config/server.conf docker.io/abraxas678/mypcopy --keyfile /home/abrax/.config/pcopy/server.key

