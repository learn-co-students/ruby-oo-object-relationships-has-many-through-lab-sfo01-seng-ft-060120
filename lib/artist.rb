class Artist
  
    attr_reader :name, :genre # has a name

    @@all = []
    
    def initialize(artist_name)
        @name = artist_name
        @genre = genre
        @@all << self
    end

    def self.all # knows about all artist instances
        @@all
    end

    def songs # returns all songs associated with this Artist
        Song.all.find_all { |song| song.artist == self }
    end

    def new_song(song_name, song_genre) # given a name and genre, creates a new song associated with that artist
        Song.new(song_name, self, song_genre)
    end
  
    def genres # has many genres, through songs
        this_artists_genres = self.songs.map { |song| song.genre }
    end

end