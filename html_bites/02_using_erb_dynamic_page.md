# Using ERB to generate HTML

_**This is a Makers Bite.** Bites are designed to train specific skills or
tools. They contain an intro, a demonstration video, some exercises with an
example solution video, and a challenge without a solution video for you to test
your learning. [Read more about how to use Makers
Bites.](https://github.com/makersacademy/course/blob/main/labels/bites.md)_

Learn to use Embedded Ruby (ERB) syntax to dynamically generate HTML responses. 

## Intro

```ruby
# file: app.rb
require 'sinatra/base'

class WebApplication < Sinatra::Base 

  get '/hello' do
    @name = params[:name]

    return erb(:index)
  end
end
```

```erb
<!-- file: views/index.erb -->
<html>
  <head></head>
  <body>
    <h1>Hello <%= @name %>!</h1>
  </body>
</html>
```

## Demonstration

@TODO

## Exercise


## Challenge

In the project `music_library_exemplar`.

Test-drive and update the `GET /albums` route so it returns the list of albums as an HTML page:

```html
<html>
  <head></head>
  <body>
    <h1>Albums</h1>

    <div>
      Title: Doolittle
      Released: 1989
    </div>

    <div>
      Title: Surfer Rosa
      Released: 1988
    </div>

    <!-- ... -->
  </body>
</html>
```

_(Don't forget to run the app using `rackup`)._

Use your web browser to access the page.

[Next Challenge](03_using_links.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_bites/02_using_erb_dynamic_page.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_bites/02_using_erb_dynamic_page.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_bites/02_using_erb_dynamic_page.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_bites/02_using_erb_dynamic_page.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_bites/02_using_erb_dynamic_page.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
