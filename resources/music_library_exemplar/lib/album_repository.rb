require_relative 'album'

class AlbumRepository
  def all
    albums = []

    # Send the SQL query and get the result set.
    sql = 'SELECT id, title, release_year FROM albums;'
    result_set = DatabaseConnection.exec_params(sql, [])
    
    # The result set is an array of hashes.
    # Loop through it to create a model
    # object for each record hash.
    result_set.each do |record|

      # Create a new model object
      # with the record data.
      album = Album.new
      album.id = record['id'].to_i
      album.title = record['title']
      album.release_year = record['release_year']

      albums << album
    end

    return albums
  end

  def find(id)
    sql = 'SELECT id, title, release_year FROM albums WHERE id = $1;'
    result_set = DatabaseConnection.exec_params(sql, [id])

    album = Album.new
    album.id = result_set[0]['id'].to_i
    album.title = result_set[0]['title']
    album.release_year = result_set[0]['release_year']

    return album
  end

  def create(album)
    sql = 'INSERT INTO albums (title, release_year) VALUES ($1, $2);'
    result_set = DatabaseConnection.exec_params(sql, [album.title, album.release_year])

    return album
  end

  def delete(id)
    sql = 'DELETE FROM albums WHERE id = $1;';
    DatabaseConnection.exec_params(sql, [id]);
  end
end