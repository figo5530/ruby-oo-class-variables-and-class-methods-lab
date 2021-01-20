class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        ghash = {}
        @@genres.each do |g|
            if ghash[g] == nil 
                ghash[g] = 1
            else 
                ghash[g] += 1
            end 
        end
        ghash
    end

    def self.artist_count
        ahash = {}
        @@artists.each do |a|
            if ahash[a] ==nil
                ahash[a] = 1
            else
                ahash[a] += 1
            end
        end
        ahash
    end

end