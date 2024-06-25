#!/bin/bash
docker kill pcopy
docker rm pcopy
docker run -it --name pcopy -p 2586:2586 -v $HOME/.config/pcopy/server.conf:/config/server.conf docker.io/abraxas678/mypcopy pcp

