class Genre
  
  attr_accessor :name
  
  @@all = []
  
  def intiialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end
  
  def songs
    Song.all.select { |song| song.genre == self }
  end
  
  def artists
    Artist.songs.select { |artist| artist.genre == self }
  end
  
end