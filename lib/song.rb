class Song

    attr_reader :name, :artist, :genre

    @@all = []

    def initialize(song_name, artist, genre) # initializes with a name, an artist, and a genre
        @song = song_name
        @artist = artist
        @genre = genre
        @@all << self
    end

    def self.all # knows about all song instances
        @@all
    end

end