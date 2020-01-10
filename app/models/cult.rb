require_relative './follower.rb'
require_relative './bloodoath.rb'

class Cult
    attr_reader :name, :location, :founding_year, :slogan
    @@all = []


    def initialize(name, location, founding_year, slogan) #returns a String that is the cult's name
        @name = name #Cult#name
        @location = location #Cult#location
        @founding_year = founding_year #Cult#founding_year
        @slogan = slogan #Cult#slogan
        @@all << self
    end
    

    def self.all #Cult.all
        @@all #returns an Array of all the cults
    end

    def self.find_by_name(name) #Cult.find_by_name
        self.all.find{|cult| cult == name} #takes a String argument that is a name and returns a Cult instance whose name matches that argument
    end

    def recruiter_follower(name) #Cult#recruit_follower
        BloodOath.new(date,self,follower) #found this solution online
        #@followers << Follower.name
        #takes in an argument of a Follower instance and adds them to this cult's list of followers
    end

    def cult_population #Cult#cult_population
        counter = 0 #returns an Integer that is the number of followers in this cult
        self.followers.each{|x| 
            counter += 1
        }
        return counter
    end

    def self.find_by_name(input)
        @@all.name.find{|cultnames| cultnames == input}
    end

    def self.find_by_name(input) #Cult.find_by_location
        @@all.location.select{|cultnames| cultnames == input} #takes a String argument that is a location and returns an Array of cults that are in that location
        #Cult.find_by_founding_year
    end

    def self.find_by_founding_year(input) #Cult.find_by_location
        @@all.founding_year.select{|cultnames| cultnames == input} #takes a String argument that is a location and returns an Array of cults that are in that location
    end

end