# Using ERB to generate HTML

_**This is a Makers Bite.** Bites are designed to train specific skills or
tools. They contain an intro, a demonstration video, some exercises with an
example solution video, and a challenge without a solution video for you to test
your learning. [Read more about how to use Makers
Bites.](https://github.com/makersacademy/course/blob/main/labels/bites.md)_

Learn to use Embedded Ruby (ERB) syntax to dynamically generate HTML responses. 

## Intro

The HTML content we put in views is again, static by default.

We can use ERB (for Embedded Ruby) syntax to generate dynamically the final HTML that will be sent to the client, by replacing the dynamic parts of the view, which are delimited by ERB tags (in between `<%=` and `%>`).

The following example shows how a variable `@name` can be used to change the view HTML content:

```ruby
# file: app.rb
require 'sinatra/base'

class WebApplication < Sinatra::Base 

  get '/hello' do
    # Set an instance variable in the route block.
    @name = params[:name]

    # The process is then the following:
    #
    # 1. Ruby reads the .erb view file
    # 2. It looks for any ERB tags and replaces it by their final value
    # 3. The final generated HTML is sent in the response

    return erb(:index)
  end
end
```

The value of the instance variable is then accessible in the `view` file:

```erb
<!-- file: views/index.erb -->
<html>
  <head></head>
  <body>
    <!-- the ERB tag below will be replaced by the value of @name -->
    <h1>Hello <%= @name %>!</h1>
  </body>
</html>
```

[Go here to learn Just enough ERB syntax](../pills/just_enough_erb.md) for the following challenges.

## Demonstration

@TODO

## Exercise

In the project `music_library_exemplar`.

Test-drive and implement a `GET /albums/:id` route so it returns the HTML content for a single album:

```html
<!-- Example for GET /albums/1 -->

<html>
  <head></head>
  <body>
    <h1>Doolittle</h1>
    <p>
      Release year: 1989
      Artist: Pixies
    </p>
  </body>
</html>
```

## Challenge

In the project `music_library_exemplar`.

Test-drive and update the `GET /albums` route so it returns the list of albums as an HTML page:

```html
<!-- GET /albums -->

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
