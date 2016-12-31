class Song < ActiveRecord::Base
  
  belongs_to :artist
  belongs_to :genre
  has_many :notes


  def artist_name=(name)
    binding.pry 
    artist = Artist.find_or_create_by(name: name)
    self.artist_id = artist.id
  end 

end

