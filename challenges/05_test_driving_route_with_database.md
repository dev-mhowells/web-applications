# Interfacing with the Database

_**This is a Makers Vine.** Vines are designed to gradually build up sophisticated skills. They contain a mixture of text and video, and may contain some challenge exercises without proposed solutions. [Read more about how to use Makers
Vines.](https://github.com/makersacademy/course/blob/main/labels/vines.md)_

Learn to test-drive Sinatra routes which interact with database-backed classes.

_This section connects together what you've learned working with databases with what you've learned building web applications. It can be quite challenging, so make sure you spend some time to understand the following._

## Intro

So far you've test-driven and implemented routes that only return static data. A web server will usually talk to a database behind the scenes, to read data from it (usually responding to `GET` requests), or save some data into it (usually responding to `POST` requests).

In the next challenges, you'll learn how to connect a database-backed program (which you've learned to build) to your Sinatra application. Here's a simplified schema of how a typical database-backed web application works:

![](../resources/http-database-flow.png)

Let's break it down:
1. The client sends a HTTP request to the web server over the Internet (e.g `GET /albums`)
2. The web server (a Sinatra application in our case) handles the request, and calls a method (such as `AlbumRepository#all`)
3. The Repository class performs a SQL query to the database.
4. The database returns a result set to the program.
5. The Repository class returns a value (for example a list of `Album` objects) to the route block code.
6. The route block code sends a response to the client containing the data.

The flow described above is what most CRUD web applications will implement, so it is important to get familiar with it, and to have a good mental model on how it works.

## Downloading the program

Use the provided codebase that contains code for an application interacting with a database.

```ruby
bundle install

# psql -h 127.0.0.1 music_library

# Make sure the tests pass
rspec
```

## Demonstration

@TODO

## Exercise One

Test-drive a route `GET /albums` which returns the list of albums as JSON:

```json
[
  {
    "id": 1,
    "title": "Doolittle",
    "release_year": 1989
    "artist_id": 1
  },
  {
    "id": 2,
    "title": "Surfer Rosa",
    "release_year": 1988
    "artist_id": 1
  },
  // (...)
]
```

You should call the method `AlbumRepository#all` in the route block.

## Exercise Two

Test-drive a route `POST /albums` to create a new album. The HTTP request sent to this route should contain three body parameters for:
  * the `title` of the new album
  * the `release_year` of the new album
  * the `artist_id` of the new album

You should call the method `AlbumRepository#create` in the route block.

You should be able to verify your work by sending a request to this route, and verifying the record is correctly saved in the database.

## Challenge

This is a process feedback challenge. That means you should record yourself doing it and
submit that recording to your coach for feedback. [How do I do
this?](https://github.com/makersacademy/golden-square/blob/main/pills/process_feedback_challenges.md)

Work in the same project directory.

1. Test-drive a route `GET /artists`, which returns the list of artists as JSON:
```json
[
  {
    "id": 1,
    "name": "Pixies",
    "genre": "Rock"
  },
  {
    "id": 2,
    "title": "ABBA",
    "genre": "Pop"
  },
  // (...)
]
```

2. Test-drive a route `POST /artists`, which is used to create a new artist in the database.
    You should be able to verify your work by sending a request to this route, and verifying the record is correctly saved in the database.

[Next Challenge](06_deploying.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=challenges/05_test_driving_route_with_database.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=challenges/05_test_driving_route_with_database.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=challenges/05_test_driving_route_with_database.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=challenges/05_test_driving_route_with_database.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=challenges/05_test_driving_route_with_database.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
