#!/bin/bash

CHAIN_ID="local_testnet"

while [[ $# -gt 0 ]]; do
    key="$1"
    case $key in
        *)
            CHAIN_ID="$1"
            shift
            ;;
    esac
done

docker rm -f $(docker ps -q --filter name="${CHAIN_ID}_*" )
docker network rm "${CHAIN_ID}_network"

rm *.txt *.json