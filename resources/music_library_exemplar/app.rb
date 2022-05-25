# file: app.rb
require 'sinatra'
require "sinatra/reloader"
require_relative 'lib/database_connection'
require_relative 'lib/album_repository'

DatabaseConnection.connect('music_library')

class Application < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/albums' do
    album_repository = AlbumRepository.new
    albums = album_repository.all

    albums_response = ""
    albums.each do |album|
      albums_response += "#{album.title}\n" 
    end

    return albums_response
  end
end