# Creating and authenticating users

_**This is a Makers Vine.** Vines are designed to gradually build up sophisticated skills.
They contain a mixture of text and video, and may contain some challenge exercises without
proposed solutions. [Read more about how to use Makers
Vines.](https://github.com/makersacademy/course/blob/main/labels/vines.md)_

Learn to authenticate users with the database and sessions.

## Storing users in the database

Usually, a user account will be stored in a database. User accounts can also be considered
a resource: we can create a new user account (signing up), read its information (account
page), update it, etc.

Something you'll need to have in mind when storing user account information, especially
when it contains sensitive data (like a password), is encryption. A password should never
be stored in plain text in a database, as even databases can be subjected to security
breaches and attacks.

You can use the [`bcrypt`
gem](https://github.com/bcrypt-ruby/bcrypt-ruby#how-to-use-bcrypt-ruby-in-general) in Ruby
to achieve this. Make sure you store the encrypted password when inserting the user
account in the database, and check against the correct encrypted value when authenticating
the user.

```ruby
# file: lib/user_repository.rb

class UserRepository
  def create(new_user)
    encrypted_password = BCrypt::Password.create(new_user.password)

    sql = '
      INSERT INTO users (email, password)
        VALUES($1, $2)
    '
    sql_params = [
      new_user.email,
      encrypted_password
    ]
  end

  def sign_in(email, submitted_password)
    user = find_by_email(email)

    return nil if user.nil?

    encrypted_submitted_password = BCrypt::Password.create(new_user.password)

    if user.password == encrypted_submitted_password
      # login success
    else
      # wrong password
    end
  end

  def find_by_email(email)
    # ...
  end
end
```

## On Sessions

By design, a web server cannot remember information about a specific client — it only
receives requests, and sends back a response. 

In order to keep track of data about a specific client, we can use a feature of Sinatra
called the session. By storing information in the session, we can make it available in any
subsequent requests from the same client.

Authentication is a very good example on how sessions can be useful — here is a typical
HTTP flow of a user signing in:

1. The user (through a web browser) signs in on a website using their credentials.
2. The web browser sends the HTTP request with the credentials to the server.
3. The server checks the credentials, usually by looking in a database.
4. If credentials are valid, the server **stores information about the signed-in user in
   the session** and sends back the response.
5. During any other request sent by the same client (so, by the same user), **the session
   will contain the user information stored previously**. For any other client, the
   session will not contain this information.

So the session is a way to "remember" information about a specific user, even though the
client they are using is sending many different requests to the server.

## Using sessions in Sinatra

```ruby
class Application < Sinatra::Base 

  # This route simply returns the login page
  get '/login' do
    return erb(:login)
  end

  # This route receives login information (email and password)
  # as body parameters, and find the user in the database
  # using the email. If the password matches, it returns
  # a success page.
  post '/login' do
    email = params[:email]
    password = params[:password]

    user = UserRepository.find_by_email(email)

    # This is a simplified way of 
    # checking the password. In a real 
    # project, you should encrypt the password
    # stored in the database.
    if user.password == password
      # Set the user ID in session
      session[:user_id] = user.id

      return erb(:login_success)
    else
      return erb(:login_error)
    end
  end

  # This route is an example
  # of a "authenticated-only" route.
  # It can be accessed only if a user is
  # signed-in (if we have user information in session).
  get '/account_page' do
    if session[:user_id] == nil
      # No user id in the session
      # so the user is not logged in.
      return redirect('/login')
    else
      # The user is logged in, display 
      # their account page.
      return erb(:account)
    end
  end
end
```

## Challenge

In the project `music_library_exemplar`.

Create a new login form by test-driving two routes:
  * The first route `GET /login` simply returns the login form.
  * The second route `POST /login` receives credentials (email and password), and should
    sign-in the user by storing information in the session.

You should then make sure that the form pages to add a new album or a new artist are
protected, and only accessible to a signed-in user.

[Next Challenge](06_deploying.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_bites/05_using_sessions.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_bites/05_using_sessions.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_bites/05_using_sessions.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_bites/05_using_sessions.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_bites/05_using_sessions.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
