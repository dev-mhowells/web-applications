# Sending a JSON Response

_**This is a Makers Vine.** Vines are designed to gradually build up sophisticated skills. They contain a mixture of text and video, and may contain some challenge exercises without proposed solutions. [Read more about how to use Makers
Vines.](https://github.com/makersacademy/course/blob/main/labels/vines.md)_

Learn to send a response containing structured JSON data.

## About JSON

The JSON format is used to structure data. It is widely used on the web, for example to transfer data between a web client and server.

The way the data is formatted is similar to Ruby hashes. Below are some examples of JSON data:

```json
// A JSON "object" containing a single key-value property.
{
  "name": "David"
}

// A JSON "object" containing a many key-value properties.
{
  "name": "David",
  "age": 34,
  "address": "30, Bristol Street"
}

// A JSON "array" containg different string values.
[
  "David",
  "Anna",
  "Mary"
]
```

In Ruby, we can use the `json` gem (which is included in Ruby — no need to download it) that comes with the `.to_json` method to convert Ruby data structures (such as arrays and hashes) to JSON format.

You can try the following in `irb`:

```ruby
require 'json'

some_hash = { name: 'David', age: 34 }
puts some_hash.to_json
```


## Returning JSON

Here is how we can send back JSON data in a Sinatra route:

```ruby
# We need to require 'json' at the top of the file.
require 'json'

# ...

get '/hello' do
  # 1. Specify the response content type - don't forget this
  content_type :json

  # 2. Returning a data hash as JSON
  response_data = { name: "David" }

  return response_data.to_json 
end
```

## Demonstration

@TODO

We can call the `.to_json` method on either Hashes or Arrays, to convert them to JSON when returning the response.

## Exercise

Update the test and implementation code of the route `GET /names` so it returns a _JSON array_ of the list of names.

## Challenge

Test-drive and implement a route `GET /posts` that returns a response with the following JSON response:

```json
[
  {
    "title": "A first post",
    "content": "Some boring content"
  },
  {
    "title": "A second post",
    "content": "Something else"
  }
]
```

[Next Challenge](05_test_driving_route_with_database.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=challenges/04_sending_json_response.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=challenges/04_sending_json_response.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=challenges/04_sending_json_response.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=challenges/04_sending_json_response.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=challenges/04_sending_json_response.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
