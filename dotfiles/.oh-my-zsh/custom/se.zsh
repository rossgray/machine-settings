# Secret Escapes specific

function lb() {
	# edit weekly logbook file
	$EDITOR ~/Dropbox/SecretEscapes/Notes/logbook/$(date -v 1w '+%Y-%m-%d').md
}

# Enable auto-completion for go-jira
eval "$(jira --completion-script-zsh)"

alias up="bash deploy_env.sh -e dev_local -r up"
alias down="bash deploy_env.sh -e dev_local -r down"

alias start-ec2="aws ec2 start-instances --instance-ids i-0ba6f18d2f27fc19b"
alias stop-ec2="aws ec2 stop-instances --instance-ids i-0ba6f18d2f27fc19b"
