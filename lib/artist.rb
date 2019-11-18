class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

 
  def songs
    Song.all.select { |song| song.artist == self }
  end
end
