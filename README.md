# Usage

1. `git clone git@github.com:cakejelly/ruby-platform-implementation.git`
2. `bundle install`
3. `bundle exec rake db:create db:migrate`
4. `bundle exec rails s`

# Endpoints
Run `rake routes` to see a list of all endpoints

```ruby
POST       /announcements(.json) # Sends announcement
POST       /conversations(.json) # Creates a conversation
GET        /conversations/:id(.json) # Retrieves a conversation
PATCH      /conversations/:id(.json) # Edits a conversation
POST       /conversations/:id/messages(.json) # Send message to conversation
GET        /users/:user_id/blocks(.json) # Retrieve a users blocklist
POST       /users/:user_id/blocks(.json) # Adds a user to another users blocklist
DELETE     /users/:user_id/blocks/:blocked_id(.json) # Removes a user from another users blocklist
```
