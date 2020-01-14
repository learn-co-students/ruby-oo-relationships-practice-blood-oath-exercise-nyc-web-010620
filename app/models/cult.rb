class Cult
    attr_reader :name, :location, :founding_year
    attr_accessor :slogan, :minimum_age

    @@all = []

    def initialize(name, location, founding_year, slogan, minimum_age = 0)
        @name, @location, @founding_year, @slogan, @minimum_age = name, location, founding_year, slogan, minimum_age #Cult#name, Cult#location, Cult#founding_year, Cult#slogan, Cult#minimum_age
        @@all << self
    end

    def self.all # Cult.all returns an Array of all the cults
        @@all
    end

    def self.find_by_name(input) # Cult.find_by_name takes a String argument that is a name and returns a Cult instance whose name matches that argument
        @@all.find{|instances| instances.name == input}
    end

    def self.find_by_location(input) # Cult.find_by_locationtakes a String argument that is a location and returns an Array of cults that are in that location
        @@all.select{|instances| instances.location == input}
    end

    def self.find_by_founding_year(input) # Cult.find_by_founding_yeartakes an Integer argument that is a year and returns all of the cults founded in that year
        @@all.select{|instances| instances.founding_year == input}
    end

    def recruiter_follower(follower_instance)# Cult#recruit_follower takes in an argument of a Follower instance and adds them to this cult's list of followers
        follower_instance.age >= @minimumage ? BloodOath.new(Time.now.strftime("%Y/%m/%d"), self, follower_instance) : "Ya'll too young" # Cult#recruit_followertakes in an argument of a Follower instance and adds them to this cult's list of followers
    end

    def cult_population # Cult#cult_population returns an Integer that is the number of followers in this cult
        BloodOath.all.select{|oaths| oaths.cult == self}.length #Edgecase
    end

    def average_age # Cult#average_age returns a Float that is the average age of this cult's followers
        BloodOath.all.select{|oaths| oaths.cult == self}.follower.age.inject(:+) / BloodOath.all.select{|oaths| oaths.cult == self}.length #Test & Convert to float
    end

    def my_followers_mottosprints # Cult#my_followers_mottosprints out all of the mottos for this cult's followers
        BloodOath.all.select{|oaths| oaths.cult == self}.map{|oath| oath.follower.life_motto}
    end
    
    def self.least_popular # Cult.least_popular returns the Cult instance who has the least number of followers :(
        popularity = Hash.new{0}
        BloodOath.all.each{|enum| popularity[enum.cult] += 1}
        popularity.sort_by {|k, v| v}.last[0]
    end

    def self.most_common_locations # Cult.most_common_locationreturns a String that is the location with the most cults
        popularity = Hash.new{0}
        BloodOath.all.each{|enum| popularity.locations[enum.cult.location] += 1}
        popularity.sort_by {|k, v| v}.first[0]
    end

end