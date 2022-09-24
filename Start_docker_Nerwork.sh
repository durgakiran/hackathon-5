 export COMPOSE_PROJECT_NAME=net
 export IMAGE_TAG=latest
 export SYS_CHANNEL=talentsprint-sys-channel
 docker-compose -f docker-compose.yaml up -d
echo "Network Started Successfully"
docker exec -it cli bash
export CHANNEL_NAME=talentsprint
export CORE_PEER_ADDRESS=peer1.mypeer1.talentsprint:7051
export CORE_PEER_LOCALMSPID="Org1MSP"
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/mypeer1.talentsprint/peers/peer1.mypeer1.talentsprint/tls/ca.crt
echo "Environment variables setup Successfully"
