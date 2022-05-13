# Requests and Responses

_**This is a Makers Bite.** Bites are designed to train specific skills or
tools. They contain an intro, a demonstration video, some exercises with an
example solution video, and a challenge without a solution video for you to test
your learning. [Read more about how to use Makers
Bites.](https://github.com/makersacademy/course/blob/main/labels/bites.md)_

Learn to send HTTP requests to a web server with `curl`.

## Request

An HTTP request is essentially defined by:
  * its **method** (also sometimes called "verb")
  * its **path** - is all that follows the first `/` of the URL.
  * its **parameters** (or request data)

A web server only responds to a list of requests with specific methods and paths. The developer of the web server application needs to explicitly configure this in their application code — you will learn how to do this later.

If the server is not configured to handle a request with a given method and path, it will usually return an error indicating this request cannot be answered.

Once the server receives (or "handles") the request, it does some work (and usually interacts with the database), and sends back a response.

## Response

An HTTP response is essentially defined by:
  * its **status code** indicating the result of the operation
  * its **body** (or content)

## Using `curl`

By default, `curl` sends a request with a `GET` method. We can use the `-X` option to change this:

```bash
# Sends a request with a POST method.
curl -X POST https://jsonplaceholder.typicode.com/todos/1
```

In the example above, the **path** of the request is `/todos/1`.

The first part of the URL, `https://jsonplaceholder.typicode.com`, is called the host. It is the address of the server itself. Everything that follows the hostname after the `/` character will be the path of the request.

## Demonstration

@TODO

## Exercise One

Use `curl` to send a request to the host `https://jsonplaceholder.typicode.com` with:
  * a `GET` method
  * a path `/todos/12`

You should get the following response body:
```
{
  "userId": 1,
  "id": 12,
  "title": "ipsa repellendus fugit nisi",
  "completed": true
}
```

## Exercise Two

Create a small diagram of the HTTP request-response cycle from the example above.

Make sure your diagram contains the following things:
  * the client
  * the server
  * the direction of the request and response
  * the method and path of the request

## Challenge

Use `curl` to send a request to the host `https://jsonplaceholder.typicode.com` with:
  * a `POST` method
  * a path `/todos`

You should get the following response body:
```
{
  "id": 201
}
```


[Next Challenge](03_request_parameters.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=http_bites/02_requests_and_responses.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=http_bites/02_requests_and_responses.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=http_bites/02_requests_and_responses.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=http_bites/02_requests_and_responses.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=http_bites/02_requests_and_responses.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
