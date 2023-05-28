# Fork Chain
This repo is complimentary to presentation Fork, Spoon and Spaghetti by zekiblue. 

If you want testnet that is forked from mainnet without going into too much detail.
You can create your own testnet by simply running clicking either of the buttons to deploy on GCP or Railway

## GCP

[![Run on Google Cloud](https://deploy.cloud.run/button.svg)](https://deploy.cloud.run)

Google cloud will deploy testnet and give you endpoint. After selecting which project and which region, it will take couple minutes then it will give you the rpc url of your fork chain.

## Railway
[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/template/n8Dy8E?referralCode=8PQn_5)

After succesfull deployment. Go to `Settings` and scroll down `Domains` and `Generate Domain`or `Add custom domain` ( if you have domain already)

--------------------
After that you can add your network to your metamask or your front end to interact with it.

[How to add development network to metamask](https://docs.metamask.io/wallet/get-started/run-development-network/)

Rpc url mentioned in this document will be the endpoint gcp or railway gives to you. or DNS record that you used to route your fork chain. And chain id will be `31337` if you did not change anything

## Default values
Some of these values might be necessary when you add chain to your metamask

- chain id: 31337
- fork url: https://eth.llamarpc.com
- fork block number: 17359852

# Forking on your local

Forking with hardhat on your local you have the node and npx already installed.

- Foundry Anvil
```
anvil --fork-url <rpc-url> --fork-chain-id 31377 --host 0.0.0.0
```
More details can be found here: [Foundry Book](https://book.getfoundry.sh/reference/anvil/)
- Hardhat
```
npx hardhat node --fork <rpc-url>
```
More details can be found here: [Hardhat docs](https://hardhat.org/hardhat-network/docs/guides/forking-other-networks)


# Costumizing your fork

If you want to costumize your fork. You can fork this repo and alter the values in the Dockerfile last line. 

You can change fork chain id (`--fork-chain-id <id>`), or change block time (`--block-time <seconds>`) or define from which block number that your fork will be started (`--fork-block-number <block-number`). More details about what you can change can be found in [Foundry Book](https://book.getfoundry.sh/reference/anvil/)



