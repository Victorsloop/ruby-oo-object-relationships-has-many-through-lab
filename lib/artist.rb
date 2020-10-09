class Artist 
    
    attr_accessor :name 
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    def songs 
        Song.all.select {|mine| mine.artist == self}
    end 

    def new_song(name,genre)
        fire = Song.new(name , self , genre)
    end 

    def genres 
        songs.map {|style| style.genre }
    end 



end 
