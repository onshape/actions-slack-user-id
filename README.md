# **WARNING - This is a public repo used to host a custom action for GitHub workflows. Do not include proprietary or sensitive data.**

# Get Slack id

## Example usage:

```yaml
- name: Get slack id
  env:
    SLACK_BOT_TOKEN: ${{ secrets.SLACK_BOT_TOKEN }}
  uses: pullreminders/slack-action@master
  with:
    args: 'jmorgan@ptc.com'
```
