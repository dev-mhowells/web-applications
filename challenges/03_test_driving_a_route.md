# Test-driving a Route

_**This is a Makers Vine.** Vines are designed to gradually build up sophisticated skills. They contain a mixture of text and video, and may contain some challenge exercises without proposed solutions. [Read more about how to use Makers
Vines.](https://github.com/makersacademy/course/blob/main/labels/vines.md)_

Learn to write an integration test for a route using RSpec.

## Testing

```ruby
require "spec_helper"
require "rack/test"
require_relative '../../app'

describe Application do
  # This is so we can use rack-test helper methods.
  include Rack::Test::Methods

  # We need to declare the `app` value by instantiating the Application
  # class so our tests work.
  let(:app) { Application.new }

  context "GET to /" do
    it 'returns 200 OK' do
      response = get('/')

      expect(response.status).to eq(200)
      expect(response.body).to eq('Some response data')
    end
  end
end
```

_In the following exercises, we will use the shorthand notation `GET /some_path` (or `POST /some_path`) to designate a route which responds to `GET` HTTP requests to the path `/some_path`._ 

## Testing request parameters

```ruby
context "POST to /hello" do
  it 'returns 200 OK' do
    # Sending a POST request to /hello
    # with a body parameter name=Paul
    response = post('/hello', name: 'Paul', some_other_param: 123)

    expect(response.status).to eq(200)
    expect(response.body).to eq('Hello Paul')
  end
end
```

## Demonstration

@TODO

## Exercise One

_You can work in the same project directory for the following exercises, or choose to create a new Ruby & Sinatra project._

Test-drive a new route `GET /names` which returns the text content `'Julia, Mary and Karim'`.

You should assert that the response status code is `200` and that the response body is the correct string.

## Exercise Two

Test-drive a new route `POST /names` which:
  * receives a body parameter `name` having some value (for example, `'Jill'`)
  * returns the name in the response

You should assert that the response status code is `200` and that the response body is the correct name that was sent in the request.

## Challenge

Test-drive a new route `POST /random-order` which:
  * receives a body parameter `names`, which is a comma-separated list of names.
  * returns the same list of names, but sorted in alphabetical order, in the response.

```
POST http://localhost:9292/random-order

names=Joe,Alice,Zoe,Julia,Kieran


Alice,Joe,Julia,Kieran,Zoe
```

[Next Challenge](04_sending_json_response.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=challenges/03_test_driving_a_route.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=challenges/03_test_driving_a_route.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=challenges/03_test_driving_a_route.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=challenges/03_test_driving_a_route.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=challenges/03_test_driving_a_route.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
