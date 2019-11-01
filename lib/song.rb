class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create(song)
    song = Song.new
    song.name = name
    @@all << self 
    song 
  end 
  
  def self.new_by_name(name)
    song = Song.new
    song.name = song 
  end
  
  def self.create_by_name(song)
    song = Song.new
    @@all << self
  end 
  
  def self.find_by_name(song)
    @@all.find {|song| song.name == name}
  end 
  
  def self.find_or_create_by_name(name)
  end

end
