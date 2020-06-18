class Genre 

  attr_accessor :name
  @@all = []
    def initialize(name)
      @name = name
      @@all << self
    end
  
    def self.all 
      @@all
    end

    # The Genre class needs an instance method, #songs, 
    # that iterates through all songs and finds the songs that belong to that genre.
    def songs 
      Song.all.select {|songs| songs.genre == self}
    end
    # The Genre class needs an instance method, #artists, 
    # that iterates over the genre's collection of songs 
    # and collects the artist that owns each song.
    # we want to talk to the Song class, look through it , see if the genre has artist that owns any of these songs.
    def artists
      songs.collect {|song| song.artist}
    end
end