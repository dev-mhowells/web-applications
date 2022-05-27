# Using forms

_**This is a Makers Vine.** Vines are designed to gradually build up sophisticated skills. They contain a mixture of text and video, and may contain some challenge exercises without proposed solutions. [Read more about how to use Makers
Vines.](https://github.com/makersacademy/course/blob/main/labels/vines.md)_

Use HTML forms to make the browser send `POST` requests.

## Intro

A form is usually implemented over two routes:
  * The first one, a `GET` route, returns HTML content with the form so the user can fill in and submit the form.
  * The second one, usually a `POST` route, handles the body parameters sent by the browser, and returns a response (usually to indicate whether the form data has been successfully handled or saved).

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

  # Return a view to confirm to the user.
  return erb(:post_created)
end
```

## HTML forms

Like links, we can use forms to make the browser send an HTTP request.

```html
<form action="/submit" method="POST">
  <input type="text" name="title">
  <input type="text" name="release_date">

  <input type="submit" value="Submit the form">
</form>
```

When the user submits this form, the browser sends a `POST` request to the path `/submit`. The `action` and `method` attributes are used to tell the browser which method and path to send the request to. Data that was input in the form is sent as body parameters.

## Test-driving a form

Since there are two routes, we need to test-drive these two routes. It's fine to test-drive them one by one.

```ruby
context "GET to /posts/new" do
  it 'returns the form page' do
    response = get('/posts/new')

    expect(response.status).to eq(200)
    expect(response.body).to include('Add a post')
    expect(response.body).to include('<form')
  end
end

context "POST to /posts" do
  it 'returns a thank you page with the correct name' do
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

@TODO

## Exercise

In the project `music_library_exemplar`.

Test-drive and implement a form page to add a new album.

You should then be able to use the form in your web browser to add a new album, and see this new album in the albums list page. 

## Challenge

In the project `music_library_exemplar`.

Test-drive and implement a form page to add a new artist.


[Next Challenge](05_the_developer_console.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_bites/04_using_forms.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_bites/04_using_forms.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_bites/04_using_forms.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_bites/04_using_forms.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_bites/04_using_forms.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
