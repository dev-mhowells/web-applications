# Using forms

_**This is a Makers Vine.** Vines are designed to gradually build up sophisticated skills. They contain a mixture of text and video, and may contain some challenge exercises without proposed solutions. [Read more about how to use Makers
Vines.](https://github.com/makersacademy/course/blob/main/labels/vines.md)_

Use HTML forms to make the browser send `POST` requests.

## Intro

A form is used to send a `POST` request, usually with some additional data, as request parameters.

A form is usually implemented over two routes:
  * The first one, a `GET` route, returns an HTML page with the form, so the user can fill in and submit it.
  * The second one, a `POST` route, handles the body parameters sent by the browser, and returns a response (usually to indicate whether the form data has been successfully handled or saved).

Here's an example:

```ruby
get '/posts/new' do
  # This route doesn't do much,
  # it returns the view with the HTML form.
  return erb(:new_post)
end

post '/posts' do
  # Get request body parameters
  title = params[:title]
  content = params[:content]

  # Do something useful, like creating a post
  # in a database.
  new_post = Post.new
  new_post.title = title
  new_post.content = content
  PostRepository.new.create(new_post)

  # Return a view to confirm
  # the form submission or resource creation
  # to the user.
  return erb(:post_created)
end
```

## HTML forms

Like links, we can use forms to make the browser send an HTTP request.

```html
<form action="/posts" method="POST">
  <input type="text" name="title">
  <input type="text" name="release_date">

  <input type="submit" value="Submit the form">
</form>
```

When the user submits this form, the browser sends a `POST` request to the path `/posts`. The `action` and `method` attributes are used to tell the browser which method and path to send the new request to. The content of each form input is sent as body parameters.

## Test-driving a form

Since there are two routes, we need to test-drive these two routes. It's fine to test-drive them one by one.

```ruby
context "GET /posts/new" do
  it 'returns the form page' do
    response = get('/posts/new')

    expect(response.status).to eq(200)
    expect(response.body).to include('<h1>Add a post</h1>')

    # Assert we have the correct form tag with the action and method.
    expect(response.body).to include('<form action="/posts" method="POST">')

    # We can assert more things, like having
    # the right HTML form inputs, etc.
  end
end

context "POST /posts" do
  it 'returns a success page' do
    # We're now sending a POST request,
    # simulating the behaviour that the HTML form would have.
    response = post(
      '/posts',
      title: 'Welcome',
      content: 'I am a post'
    )

    expect(response.status).to eq(200)
    expect(response.body).to include('<p>Your post has been added!</p>')
  end
end
```

## Demonstration

[Video Demonstration]()

## Exercise

In the project `music_library_database_app`.

Test-drive and implement a form page to add a new album. You will need to test-drive two new routes for this.

You should then be able to use the form in your web browser to add a new album, and see this new album in the albums list page. 

[Example solution]()

## Challenge

In the project `music_library_database_app`.

Test-drive and implement a form page to add a new artist. You will need to test-drive two new routes for this.

You should then be able to use the form in your web browser to add a new artist, and see this new artist in the artists list page. 

[Next Challenge](05_debugging.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_bites/04_using_forms.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_bites/04_using_forms.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_bites/04_using_forms.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_bites/04_using_forms.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_bites/04_using_forms.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
