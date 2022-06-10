require 'pry'
class Song
    attr_reader :name, :artist,:genre
    @@count=0
    @@genres=[]
    @@artists=[]
    @hash_genres=Hash.new(0)
    @hash_artists=Hash.new(0)
    def initialize(name,artist,genre)
        @name=name
        @artist=artist
        @genre=genre
        @@count+=1
        @@genres<<genre
        @@artists<<artist
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
        @@genres.each do |genre|
            if @hash_genres.keys.include? genre
                @hash_genres["#{genre}"]+=1

            else 
                @hash_genres["#{genre}"]= 1
            end
        end
        @hash_genres
    end
    def self.artist_count
        @@artists.each do |artist|
            if @hash_artists.keys.include? artist
                @hash_artists["#{artist}"]+=1

            else 
                @hash_artists["#{artist}"]= 1
            end
        end
        @hash_artists
    end



end

ns = Song.new("99 Problems", "Jay-Z", "poo")
ns2 = Song.new("99 Problems", "Jay-Z", "poo")

binding.pry