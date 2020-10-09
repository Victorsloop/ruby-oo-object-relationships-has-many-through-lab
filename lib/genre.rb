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

    def songs 
        Song.all.select{|type|type.genre == self }
    end

    def artists 
        songs.map {|art| art.artist}
    end

end 