POST /albums

# Request:
POST /albums

# With body parameters:
title=Voyage
release_year=2022
artist_id=2

# Expected response (200 OK)
(No content)

test:
```Ruby
  context "POST to /albums" do
    it "returns 200 OK with the right content" do
      # Send a POST request to /submit
      # with some body parameters
      # and returns a response object we can test.
      response = post("/albums", title: 'Voyage', release_year: '2022', artist_id: '2')

      # Assert the response status code and body.
      expect(response.status).to eq(200)
      expect(response.body).to eq("")
    end
  end