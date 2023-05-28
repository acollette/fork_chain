FROM ghcr.io/foundry-rs/foundry:latest
EXPOSE 8545
ENTRYPOINT ["anvil", "--host", "0.0.0.0", "--fork-chain-id", "31337", "--fork-url", "https://eth.llamarpc.com"]
