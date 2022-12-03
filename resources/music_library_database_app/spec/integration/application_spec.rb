require "spec_helper"
require "rack/test"
require_relative '../../app'

describe Application do
  # This is so we can use rack-test helper methods.
  include Rack::Test::Methods

  # We need to declare the `app` value by instantiating the Application
  # class so our tests work.
  let(:app) { Application.new }

  context 'GET /albums' do
    it 'should return the list of albums' do
      response = get('/albums')

      expected_response = 'Surfer Rosa, Waterloo, Super Trouper, Bossanova, Lover, Folklore, I Put a Spell on You, Baltimore, Here Comes the Sun, Fodder on My Wings, Ring Ring'

      expect(response.status).to eq(200)
      expect(response.body).to eq(expected_response)
    end
  end

  context 'GET /albums/2' do
    it 'should return the first album' do
      response = get('/albums/2')
      # ('Doolittle', 1989, 1),
      # p response.body
      expect(response.status).to eq(200)
      expect(response.body).to include("<h1>Surfer Rosa</h1>")
    end
  end

  context "POST to /albums" do
    it "returns 200 OK with the right content" do
      # Send a POST request to /submit
      # with some body parameters
      # and returns a response object we can test.
      response = post("/albums", title: 'Voyage', release_year: '2022', artist_id: '2')

      # Assert the response status code and body.
      expect(response.status).to eq(200)
      expect(response.body).to eq("")

      response2 = get('/albums')

      expect(response2.body).to include('Voyage')
    end
  end

  context 'GET /artists' do
    it 'gets a list of all artists' do

     response = get('/artists') 

    expected_response = 'Pixies, ABBA, Taylor Swift, Nina Simone, Kiasmos'

    expect(response.status).to eq(200)
    expect(response.body).to eq(expected_response)

    end
  end

  context "POST to /artists" do
    it "creates a new artist in the database" do
      
      response = post("/artists", name: 'Wild Nothing', genre: 'Indie')

      expect(response.status).to eq(200)
      expect(response.body).to eq("")

      response2 = get('/artists')
      expect(response2.body).to include('Wild Nothing')
    end
  end


end
