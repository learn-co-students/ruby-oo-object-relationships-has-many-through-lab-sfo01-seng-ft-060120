class Genre

    attr_reader :name

    @@all = []

    def initialize(genre_name) # has a name 
        @name = genre_name
        @@all << self
    end

    def self.all # knows about all genre instances
        @@all
    end


    def songs # has many songs
        Song.all.find_all { |song| song.genre == self }
    end

    def artists # has many artists, through songs
        this_genres_artists = self.songs.map { |song| song.artist }
    end

end