#!/bin/bash

IROHA_NO="3"
IROHA="iroha-grpc${IROHA_NO}"

HOME=$(pwd)

docker stop ${IROHA}
docker rm ${IROHA}

docker run -it --name ${IROHA} \
  -v ${HOME}/config${IROHA_NO}:/usr/local/iroha/config \
  hyperledger/iroha-grpc /bin/bash
