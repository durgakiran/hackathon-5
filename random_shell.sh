# add peers to channel




# CS ENV
# PUCS
export CORE_PEER_ADDRESS=pucs.cs.group:18051
export CORE_PEER_LOCALMSPID=csMSP
export CORE_PEER_TLS_CERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/cs.group/peers/pucs.cs.group/tls/server.crt
export CORE_PEER_TLS_KEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/cs.group/peers/pucs.cs.group/tls/server.key
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/cs.group/peers/pucs.cs.group/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/cs.group/users/Admin@cs.group/msp

peer channel join -b ./coldstorage.block

# we need to make sure our tx file path is correct
peer channel update -o orderer1.group:7050 -c $CHANNEL_NAME -f ./channel-artifacts/coldStorage.tx --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/group/orderers/orderer1.group/msp/tlscacerts/tlsca.group-cert.pem


# PVCS
export CORE_PEER_ADDRESS=pvcs.cs.group:17051
export CORE_PEER_LOCALMSPID=csMSP
export CORE_PEER_TLS_CERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/cs.group/peers/pvcs.cs.group/tls/server.crt
export CORE_PEER_TLS_KEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/cs.group/peers/pvcs.cs.group/tls/server.key
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/cs.group/peers/pvcs.cs.group/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/cs.group/users/Admin@cs.group/msp

peer channel join -b ./coldstorage.block

# we need to make sure our tx file path is correct
peer channel update -o orderer1.group:7050 -c $CHANNEL_NAME -f ./channel-artifacts/coldStorage.tx --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/group/orderers/orderer1.group/msp/tlscacerts/tlsca.group-cert.pem


# CCO
export CORE_PEER_ADDRESS=cco.cs.group:19051
export CORE_PEER_LOCALMSPID=csMSP
export CORE_PEER_TLS_CERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/cs.group/peers/cco.cs.group/tls/server.crt
export CORE_PEER_TLS_KEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/cs.group/peers/cco.cs.group/tls/server.key
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/cs.group/peers/cco.cs.group/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/cs.group/users/Admin@cs.group/msp

peer channel join -b ./coldstorage.block

# we need to make sure our tx file path is correct
peer channel update -o orderer1.group:7050 -c $CHANNEL_NAME -f ./channel-artifacts/coldStorage.tx --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/group/orderers/orderer1.group/msp/tlscacerts/tlsca.group-cert.pem



# CLM ENV

#CLMN
export CORE_PEER_ADDRESS=clmn.clm.group:22051
export CORE_PEER_LOCALMSPID=clmMSP
export CORE_PEER_TLS_CERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/clm.group/peers/clmn.clm.group/tls/server.crt
export CORE_PEER_TLS_KEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/clm.group/peers/clmn.clm.group/tls/server.key
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/clm.group/peers/clmn.clm.group/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/clm.group/users/Admin@clm.group/msp


peer channel join -b ./coldstorage.block
peer channel update -o orderer1.group:7050 -c $CHANNEL_NAME -f ./channel-artifacts/clmMSPanchors.tx --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/group/orderers/orderer1.group/msp/tlscacerts/tlsca.group-cert.pem


#CLMR
export CORE_PEER_ADDRESS=clmr.clm.group:21051
export CORE_PEER_LOCALMSPID=clmMSP
export CORE_PEER_TLS_CERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/clm.group/peers/clmr.clm.group/tls/server.crt
export CORE_PEER_TLS_KEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/clm.group/peers/clmr.clm.group/tls/server.key
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/clm.group/peers/clmr.clm.group/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/clm.group/users/Admin@clm.group/msp


peer channel join -b ./coldstorage.block
peer channel update -o orderer1.group:7050 -c $CHANNEL_NAME -f ./channel-artifacts/clmMSPanchors.tx --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/group/orderers/orderer1.group/msp/tlscacerts/tlsca.group-cert.pem

# INS

# PVINS
export CORE_PEER_ADDRESS=pvins.ins.group:23051
export CORE_PEER_LOCALMSPID=insMSP
export CORE_PEER_TLS_CERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/ins.group/peers/pvins.ins.group/tls/server.crt
export CORE_PEER_TLS_KEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/ins.group/peers/pvins.ins.group/tls/server.key
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/ins.group/peers/pvins.ins.group/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/ins.group/users/Admin@ins.group/msp


peer channel join -b ./coldstorage.block
peer channel update -o orderer1.group:7050 -c $CHANNEL_NAME -f ./channel-artifacts/insMSPanchors.tx --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/group/orderers/orderer1.group/msp/tlscacerts/tlsca.group-cert.pem


# PUINS
export CORE_PEER_ADDRESS=puins.ins.group:24051
export CORE_PEER_LOCALMSPID=insMSP
export CORE_PEER_TLS_CERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/ins.group/peers/puins.ins.group/tls/server.crt
export CORE_PEER_TLS_KEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/ins.group/peers/puins.ins.group/tls/server.key
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/ins.group/peers/puins.ins.group/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/ins.group/users/Admin@ins.group/msp


peer channel join -b ./coldstorage.block
peer channel update -o orderer1.group:7050 -c $CHANNEL_NAME -f ./channel-artifacts/insMSPanchors.tx --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/group/orderers/orderer1.group/msp/tlscacerts/tlsca.group-cert.pem


# TRALOG

#regtr
export CORE_PEER_ADDRESS=regtr.tralog.group:25051
export CORE_PEER_LOCALMSPID=tralogMSP
export CORE_PEER_TLS_CERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/tralog.group/peers/regtr.tralog.group/tls/server.crt
export CORE_PEER_TLS_KEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/tralog.group/peers/regtr.tralog.group/tls/server.key
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/tralog.group/peers/regtr.tralog.group/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/tralog.group/users/Admin@tralog.group/msp


peer channel join -b ./coldstorage.block
peer channel update -o orderer1.group:7050 -c $CHANNEL_NAME -f ./channel-artifacts/tralogMSPanchors.tx --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/group/orderers/orderer1.group/msp/tlscacerts/tlsca.group-cert.pem

#nattr
export CORE_PEER_ADDRESS=nattr.tralog.group:26051
export CORE_PEER_LOCALMSPID=tralogMSP
export CORE_PEER_TLS_CERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/tralog.group/peers/nattr.tralog.group/tls/server.crt
export CORE_PEER_TLS_KEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/tralog.group/peers/nattr.tralog.group/tls/server.key
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/tralog.group/peers/nattr.tralog.group/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/tralog.group/users/Admin@tralog.group/msp


peer channel join -b ./coldstorage.block
peer channel update -o orderer1.group:7050 -c $CHANNEL_NAME -f ./channel-artifacts/tralogMSPanchors.tx --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/group/orderers/orderer1.group/msp/tlscacerts/tlsca.group-cert.pem


# FIS

#nbfc
export CORE_PEER_ADDRESS=nbfc.fis.group:16051
export CORE_PEER_LOCALMSPID=fisMSP
export CORE_PEER_TLS_CERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/fis.group/peers/nbfc.fis.group/tls/server.crt
export CORE_PEER_TLS_KEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/fis.group/peers/nbfc.fis.group/tls/server.key
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/fis.group/peers/nbfc.fis.group/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/fis.group/users/Admin@fis.group/msp


peer channel join -b ./coldstorage.block
peer channel update -o orderer1.group:7050 -c $CHANNEL_NAME -f ./channel-artifacts/bankMSPanchors.tx --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/group/orderers/orderer1.group/msp/tlscacerts/tlsca.group-cert.pem


#pvbank
export CORE_PEER_ADDRESS=pvbank.fis.group:15051
export CORE_PEER_LOCALMSPID=fisMSP
export CORE_PEER_TLS_CERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/fis.group/peers/pvbank.fis.group/tls/server.crt
export CORE_PEER_TLS_KEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/fis.group/peers/pvbank.fis.group/tls/server.key
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/fis.group/peers/pvbank.fis.group/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/fis.group/users/Admin@fis.group/msp


peer channel join -b ./coldstorage.block
peer channel update -o orderer1.group:7050 -c $CHANNEL_NAME -f ./channel-artifacts/bankMSPanchors.tx --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/group/orderers/orderer1.group/msp/tlscacerts/tlsca.group-cert.pem

#pubank
export CORE_PEER_ADDRESS=pubank.fis.group:14051
export CORE_PEER_LOCALMSPID=fisMSP
export CORE_PEER_TLS_CERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/fis.group/peers/pubank.fis.group/tls/server.crt
export CORE_PEER_TLS_KEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/fis.group/peers/pubank.fis.group/tls/server.key
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/fis.group/peers/pubank.fis.group/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/fis.group/users/Admin@fis.group/msp


peer channel join -b ./coldstorage.block
peer channel update -o orderer1.group:7050 -c $CHANNEL_NAME -f ./channel-artifacts/bankMSPanchors.tx --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/group/orderers/orderer1.group/msp/tlscacerts/tlsca.group-cert.pem



#WDRA

#dpstr
export CORE_PEER_ADDRESS=dpstr.wdra.group:30051
export CORE_PEER_LOCALMSPID=wdraMSP
export CORE_PEER_TLS_CERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/wdra.group/peers/dpstr.wdra.group/tls/server.crt
export CORE_PEER_TLS_KEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/wdra.group/peers/dpstr.wdra.group/tls/server.key
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/wdra.group/peers/dpstr.wdra.group/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/wdra.group/users/Admin@wdra.group/msp


peer channel join -b ./coldstorage.block
peer channel update -o orderer1.group:7050 -c $CHANNEL_NAME -f ./channel-artifacts/wdraMSPanchors.tx --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/group/orderers/orderer1.group/msp/tlscacerts/tlsca.group-cert.pem


#insp
export CORE_PEER_ADDRESS=insp.wdra.group:20051
export CORE_PEER_LOCALMSPID=wdraMSP
export CORE_PEER_TLS_CERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/wdra.group/peers/insp.wdra.group/tls/server.crt
export CORE_PEER_TLS_KEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/wdra.group/peers/insp.wdra.group/tls/server.key
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/wdra.group/peers/insp.wdra.group/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/wdra.group/users/Admin@wdra.group/msp


peer channel join -b ./coldstorage.block
peer channel update -o orderer1.group:7050 -c $CHANNEL_NAME -f ./channel-artifacts/wdraMSPanchors.tx --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/group/orderers/orderer1.group/msp/tlscacerts/tlsca.group-cert.pem

#wdra
export CORE_PEER_ADDRESS=wdra.wdra.group:7051
export CORE_PEER_LOCALMSPID=wdraMSP
export CORE_PEER_TLS_CERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/wdra.group/peers/wdra.wdra.group/tls/server.crt
export CORE_PEER_TLS_KEY_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/wdra.group/peers/wdra.wdra.group/tls/server.key
export CORE_PEER_TLS_ROOTCERT_FILE=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/wdra.group/peers/wdra.wdra.group/tls/ca.crt
export CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/wdra.group/users/Admin@wdra.group/msp


peer channel join -b ./coldstorage.block
peer channel update -o orderer1.group:7050 -c $CHANNEL_NAME -f ./channel-artifacts/wdraMSPanchors.tx --tls --cafile /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/group/orderers/orderer1.group/msp/tlscacerts/tlsca.group-cert.pem

