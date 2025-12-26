#!/bin/bash
docker run -p 80:5000 --name flask-web -d 459063348692.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-29-ecr-repo:latest
sleep 20s
