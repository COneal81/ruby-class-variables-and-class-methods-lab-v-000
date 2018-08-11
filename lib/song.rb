class Song 
  attr_accessor :name, :artist, :genre 
  attr_reader :artists
  @@count = 0
  
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}
  
  def initialize(name, artist, genre)
   @@count +=1
   @@genres<< genre
   @artist = artist
   @@artists << artist
   @genre = genre
   @name =name
   
   
   
   
  
  end

  def self.count
    
  end
  
  def self.count
    @@count
  end
  
  def self.genres 
    @@genres.uniq
  end

  def self.artist
    @@artists.uniq
  end
  
  def self.genre_count
    @@genres.each do |genre|
    @@genre_count[genre] = @@genres.count(genre)
    end
    @@genre_count
  end
  
  def self.artist_count
    @@artists.each do |artist|
      @@artist_count[artist] = @@artists.count(artist)
    end
    @@artists
  end
end