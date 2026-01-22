# install teleport
```bash
curl -O https://cdn.teleport.dev/teleport-14.3.6.pkg
sudo installer -pkg teleport-14.3.6.pkg -target /
which teleport
```

# Docker CLI

```bash
brew install docker 
brew install colima
brew install docker-compose docker-credential-helper
```

## Auto run colima where open terminal 
Add line to ~/.zshrc
```bash 
colima status >/dev/null 2>&1 || colima start
```
