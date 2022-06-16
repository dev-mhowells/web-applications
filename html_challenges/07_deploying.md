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
$ git add .
$ git commit -m "Web application setup"

# Login into heroku
# This will automatically open a page in your web browser
# to login using Heroku's website. Once it's done, you can 
# go back to your terminal.
$ heroku login

# Create an heroku app
$ heroku create
$ bundle lock --add-platform x86_64-linux

# Push and deploy to heroku
$ git push heroku main

# Heroku will then output a bunch of logs 
# while deploying.

# It should give you the URL of your deployed app
# once finished (for example, https://young-tundra-27419.herokuapp.com)
```

## Exercise

Deploy your previous challenge project to a new Heroku app.

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_challenges/07_deploying.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_challenges/07_deploying.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_challenges/07_deploying.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_challenges/07_deploying.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_challenges/07_deploying.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
