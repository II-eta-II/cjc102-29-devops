#!/bin/bash

- aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin 459063348692.dkr.ecr.ap-northeast-1.amazonaws.com

if [ `docker images | grep 459063348692.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-29-ecr-repo | wc -l`  = 1 ]
then
        docker rmi 459063348692.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-29-ecr-repo
        docker pull 459063348692.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-29-ecr-repo:latest
else
        docker pull 459063348692.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-29-ecr-repo:latest
fi
