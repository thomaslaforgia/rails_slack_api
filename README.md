## rails_slack_api
Slack API tools for Rails backend

### Setup
- [Generate a token](https://api.slack.com/custom-integrations/legacy-tokens)

- Run:

```
bundle install

rails db:create
rails db:migrate

echo SLACK_TOKEN=your-slack-token >> .env

rails db:seed
```
