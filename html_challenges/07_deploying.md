# Deploying your Web server

_**This is a Makers Vine.** Vines are designed to gradually build up sophisticated skills. They contain a mixture of text and video, and may contain some challenge exercises without proposed solutions. [Read more about how to use Makers
Vines.](https://github.com/makersacademy/course/blob/main/labels/vines.md)_

Learn to deploy an application using Heroku.

## Intro

It is now time to deploy your application so it runs remotely. Remember that this is how web server programs work in real-world situations: they run on a remote machine, and clients access it through the network, using HTTP requests and responses.

In this section, you will use Heroku, which is a Cloud service allowing us to deploy programs without too much configuration and work. It has a limited free tier you can use for simple projects.

First, [you'll need to create an account](https://signup.heroku.com/login). Then follow the steps below.

## Installing the Heroku CLI

If you're on Mac, you can run the following command to install the CLI. Otherwise, [follow the instructions](https://devcenter.heroku.com/articles/heroku-cli) for your own system.

```bash
brew tap heroku/brew && brew install heroku
```

## Project Setup

Create a new account on Heroku if you don't have one, and go to [your applications](https://dashboard.heroku.com/apps) page.

Create a new application. Choose a unique name (such as `my-sinatra-app-{your-name}`) and leave the default region.

```bash
$ cd my-web-project/

# Skip the git setup if already done.
$ git init
$ git branch -m main

# Login into heroku
# This will automatically open a page in your web browser
# to login using Heroku's website. Once it's done, you can 
# go back to your terminal.
$ heroku login

# Create an heroku app
$ heroku create
# This command will modify Gemfile.lock - make sure to
# 'git add' it again if needed. 
$ bundle lock --add-platform x86_64-linux

# Add files and commit
$ git add .
$ git commit -m "Web application setup"

# Push and deploy to heroku
$ git push heroku main

# Heroku will then output a bunch of logs 
# while deploying.

# It should give you the URL of your deployed app
# once finished (for example, https://young-tundra-27419.herokuapp.com)
```

## Using a PostgreSQL Database on Heroku

You can configure your Heroku application so it uses a database, also hosted by Heroku. 

```bash
# This adds an Heroku addon to your application, with the 
# 'hobby-dev' plan, which is the basic free Heroku plan.
$ heroku addons:create heroku-postgresql:hobby-dev

# This will launch a psql REPL connected
# to the remote Heroku database. Once you're
# in this REPL, you can load the SQL structure
# and seeds of your tables by copy pasting the SQL
# code in there.
$ heroku pg:psql
```

Heroku automatically sets an environment variable when running the app, which contains the connection string to the database we need to use. Modify the `DatabaseConnection` class so it connects to the right database.

```ruby
# file: lib/database_connection.rb

def self.connect
  # If the environment variable (set by Heroku)
  # is present, use this to open the connection.
  if ENV['DATABASE_URL'] != nil
    @connection = PG.connect(ENV['DATABASE_URL'])
    return
  end

  if ENV['ENV'] == 'test'
    database_name = 'music_library_test'
  else
    database_name = 'music_library'
  end
  @connection = PG.connect({ host: '127.0.0.1', dbname: database_name })
end
```

You can now commit your changes to the file, and run again `git push heroku main` to redeploy the app.

## Exercise

Deploy your previous challenge project to a new Heroku app.

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_challenges/07_deploying.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_challenges/07_deploying.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_challenges/07_deploying.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_challenges/07_deploying.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_challenges/07_deploying.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
