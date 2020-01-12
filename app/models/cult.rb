class Cult
    attr_reader :name, :location, :founding_year, :population
    attr_accessor :slogan 

    @@all = []

    def initialize(name, location, founding_year, slogan)
        @@all << self

        @name = name #Cult#name returns a String that is the cult's name
        @location = location #Cult#location returns a String that is the city where the cult is located
        @founding_year = founding_year #Cult#founding_year returns an Integer that is the year the cult was founded
        @slogan = slogan #Cult#slogan returns a String that is this cult's slogan
        @population = []
    end
    
    def self.all #Cult.all returns an Array of all the cults
        @@all
    end

    def self.find_by_name(input) #Cult.find_by_name takes a String argument that is a name and returns a Cult instance whose name matches that argument
        @@all.select{|cult| cult.name == input}
    end

    def cult_population #cult_population returns an Integer that is the number of followers in this cult
        self.population.length
    end

    def self.find_by_location(input) #Cult.find_by_location takes a String argument that is a location and returns an Array of cults that are in that location
        @@all.select{|cult| cult.location == input}
    end

    def self.find_by_founding_year(input) #Cult.find_by_founding_year takes an Integer argument that is a year and returns all of the cults founded in that year
        @@all.select{|cult| cult.founding_year == input}
    end

    def recruit_follower(follower) #Cult#recruit_follower takes in an argument of a Follower instance and adds them to this cult's list of followers
        self.population << follower
    end

end