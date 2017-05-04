class Song < ActiveRecord::Base
  belongs_to :genre
  belongs_to :artist

  def get_genre_name
    self.genre[:name]
  end

  def drake_made_this
  self.artist =  Artist.new(:name => "Drake")
    
    # when this method is called it should assign the song's artist to Drake
  end
end
