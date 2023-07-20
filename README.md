# Vault

Quick app to run a [vault](https://www.vaultproject.io) server in a heroku dyno 

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)


## Setup 
```bash 
brew install vault vault-cli jq

export VAULT_APP=<APP NAME YOU PICKED>
export VAULT_ADDR="https://${VAULT_APP}.herokuapp.com"

vault operator init -key-shares=1 -key-threshold=1      #### stash the output of this command in a safe place!

export VAULT_TOKEN=<ROOT TOKEN FROM INIT>
vault write secret/hello value=world
vault read secret/hello
```

### To automatically unseal set 

`export VAULT_UNSEAL_KEY=<unseal-key-here>`

Check status

`vault status`
   

#### Useful Links
- [docs](https://www.vaultproject.io/docs/index.html)
- [api docs](https://www.vaultproject.io/api/index.html)
- [use cases](https://sreeninet.wordpress.com/2016/10/01/vault-use-cases/)
