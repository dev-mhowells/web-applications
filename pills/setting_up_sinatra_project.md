# Setting up a Sinatra project

[A video demonstration is here.](https://www.youtube.com/watch?v=1j0PS6e0CZk).

Learn to setup a Ruby project using Sinatra.

## Initial setup

[First, setup a new Ruby + RSpec project.](https://github.com/makersacademy/golden-square/blob/main/pills/setting_up_an_rspec_project.md)

Then, follow the additional steps below.

```bash
# Add the sinatra library, the webrick gem, and rack-test
bundle add sinatra sinatra-contrib webrick rack-test

# Create the main application file
touch app.rb

# Create the app_spec.rb integration tests file
mkdir spec/integration
touch spec/integration/app_spec.rb

# Create the config.ru file
touch config.ru
```

## The `app.rb` file

When building Sinatra web applications, this file will contain the application class. Create an empty one for now, you will define _routes_ later inside it (and learn about what a _route_ is).

```ruby
require 'sinatra/base'
require 'sinatra/reloader'

class Application < Sinatra::Base
  # This allows the app code to refresh
  # without having to restart the server.
  configure :development do
    register Sinatra::Reloader
  end
end
```

## The `config.ru` file

We will later use the command `rackup` to "run" the web server. That command comes built-in with the `webrick` gem we installed earlier. By running it, our Sinatra application will run continuously in a terminal, waiting to receive HTTP requests, just like a "real" web server would.

To know how to run the Sinatra application class, it needs a few lines of configuration of the file `config.ru` — let's add this now.

```ruby
# file: config.ru
require './app'
run Application
```

You should now be able to run the app by using the `rackup` command, and get a similar output:

```
$ rackup

[2022-05-11 16:14:54] INFO  WEBrick 1.7.0
[2022-05-11 16:14:54] INFO  ruby 3.0.1 (2021-04-05) [x86_64-darwin20]
[2022-05-11 16:14:54] INFO  WEBrick::HTTPServer#start: pid=7377 port=9292
```

Now use your browser to visit `http://localhost:9292`. You should see the following page.

![](./sinatra-home.png)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=pills%2Fsetting_up_sinatra_project.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=pills%2Fsetting_up_sinatra_project.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=pills%2Fsetting_up_sinatra_project.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=pills%2Fsetting_up_sinatra_project.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=pills%2Fsetting_up_sinatra_project.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
