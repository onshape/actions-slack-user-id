#!/bin/sh
set -eux

if test -z "$SLACK_BOT_TOKEN"; then
  echo "Error: SLACK_BOT_TOKEN is unset."
  exit 1
fi
emailAddress="$1"
if [ -z "$emailAddress" ]; then
    echo "Usage: PTC_email_address"
    exit 1
fi

slackUserId=$(curl -s -X POST -H "Authorization: Bearer $SLACK_BOT_TOKEN" https://slack.com/api/users.list | jq -r -c ".members[] | select(.profile.email == \"${emailAddress}\") | .id")

echo "::set-output name=slack-user-id::${slackUserId}"
