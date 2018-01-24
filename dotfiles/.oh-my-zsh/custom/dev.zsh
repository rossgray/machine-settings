# Go stuff
export GOPATH=$HOME/dev/go
export PATH=$PATH:$GOPATH/bin
# gcloud stuff
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc
source <(kubectl completion zsh)

kube_prompt() {
	K8_CONTEXT=$(kubectl config current-context)
	# Extract GCP metadata from the kubectl context name
	if [[ $K8_CONTEXT == gke_* ]]; then
		# kubectl context isn't a custom one
		FULL_CONTEXT=$K8_CONTEXT
	else
		FULL_CONTEXT=$(kubectl config get-contexts $K8_CONTEXT | grep $K8_CONTEXT | awk '{print $3}'  )
	fi
	PROJECT=$(echo $FULL_CONTEXT | cut -d_ -f2)
	REGION=$(echo $FULL_CONTEXT | cut -d_ -f3)
	CLUSTER=$(echo $FULL_CONTEXT | cut -d_ -f4)
	NS=$(kubectl config get-contexts $K8_CONTEXT --no-headers | awk '{print $5}')
	kubectl_prompt="k8s:($PROJECT|$CLUSTER|$NS)"
	echo $kubectl_prompt
}

function lb() {
	# edit weekly logbook file
    $EDITOR ~/Dropbox/Ingresso/logbook/$(date -v 1w '+%Y-%m-%d').md
}

function todo() {
    $EDITOR ~/Dropbox/todo.md
}
