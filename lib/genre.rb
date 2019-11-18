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
  
end