# file: app.rb
require 'sinatra'
require "sinatra/reloader"
require_relative 'lib/database_connection'
require_relative 'lib/album_repository'
require_relative 'lib/artist_repository'

DatabaseConnection.connect

class Application < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
    also_reload 'lib/album_repository'
    also_reload 'lib/artist_repository'
  end

  get '/albums' do
    repo = AlbumRepository.new
    albums = repo.all 

    response = albums.map do |album|

      album.title
    end.join(', ')

    return response
  end

  post '/albums' do

    album = Album.new

    album.title = params[:title]
    album.release_year = params[:release_year]
    album.artist_id = params[:artist_id]

    repo = AlbumRepository.new
    repo.create(album)

  end

  get '/artists' do
    repo = ArtistRepository.new
    repo.all.map { |artist| artist.name }.join(', ')
  end

  post '/artists' do
    artist = Artist.new

    artist.name = params[:name]
    artist.genre = params[:genre]

    repo = ArtistRepository.new
    repo.create(artist)
  end
  
end