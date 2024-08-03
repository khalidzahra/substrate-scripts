# Substrate Testnet Scripts

This repository provides scripts for initiating a configurable testnet using the Substrate blockchain framework.

## Usage

1. Copy all the shell scripts and the Containerfile to your substrate node directory.
2. Build your node with cargo using
```bash
cargo build --release
```
3. Make all scripts executable using
```bash
chmod +x init_testnet.sh gen_keys.sh entrypoint.sh create_spec.sh cleanup.sh
```
4. Launch a testnet using
```bash
./init_testnet.sh <password> [--chain <chainId>] [--validators <number_of_validators>] [--nodes <number_of_nodes>]"
```
where *password* is used to generate keys for validator nodes.

5. When the testnet is no longer needed and is to be removed, simply run 
```bash
./cleanup.sh [<chainId>]
```
where *chainId* is optional and defaults to *local_testnet*