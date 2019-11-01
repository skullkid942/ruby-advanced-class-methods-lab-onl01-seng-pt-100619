class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = Song.new
    Song.name = name 
    Song.artist_name = artist_name
    @@all << self 
    song 
  end 

end
