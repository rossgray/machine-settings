# Go stuff
export GOPATH=$HOME/dev/go
export PATH=$PATH:$GOPATH/bin
# gcloud stuff
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc
source <(kubectl completion zsh)
