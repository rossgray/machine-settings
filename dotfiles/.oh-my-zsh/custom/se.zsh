# Secret Escapes specific

function lb() {
	# edit weekly logbook file
	$EDITOR /Volumes/GoogleDrive/My\ Drive/logbook/$(date -v 1w '+%Y-%m-%d').md
}

# Enable auto-completion for go-jira
eval "$(jira --completion-script-zsh)"
