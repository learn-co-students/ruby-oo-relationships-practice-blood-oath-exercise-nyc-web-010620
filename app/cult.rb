class Cult
    attr_accessor :name, :location, :slogan
    attr_reader :founding_year 

    @@all = []

    def initialize(name, location, slogan)
        @name = name
        @location = location
        @founding_year = Time.new.to_s.split(" ")[0]
        @slogan = slogan

        @@all << self
    end

    def self.all
        @@all
    end

    def recruit_follower(follower)
        BloodOath.new(self, follower)
    end

    def cult_population
        BloodOath.all.count { |membership| membership.cult == self } 
    end

    def self.find_by_name(cult_name)
        Cult.all.find { |cult| cult.name == cult_name }
    end

    def self.find_by_location(location)
        Cult.all.select { |cult| cult.location == location }
    end

    def self.find_by_founding_year(founding_year)
        Cult.all.select { |cult| cult.founding_year == founding_year }
    end
end