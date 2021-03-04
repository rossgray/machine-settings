# Secret Escapes specific

function lb() {
	# edit weekly logbook file
	$EDITOR ~/Dropbox/SecretEscapes/Notes/logbook/$(date -v 1w '+%Y-%m-%d').md
}

# Enable auto-completion for go-jira
eval "$(jira --completion-script-zsh)"

alias start-ec2="aws ec2 start-instances --instance-ids i-0ba6f18d2f27fc19b"
alias stop-ec2="aws ec2 stop-instances --instance-ids i-0ba6f18d2f27fc19b"

alias tunnel="networksetup -connectpppoeservice 'VPN SE' && cd /Users/ross.gray/dev/one-data-pipeline && ./sbin/airflow_ssh_tunnel -e prod -u rossgray"
alias dagstatus="open http://localhost:8080/admin/dagrun/\?flt2_execution_date_greater_than\=$(date -v 2d -u +'%Y-%m-%d')+00%3A00%3A00\&flt4_state_not_equal\=success"
