require_relative '../config/environment.rb'
# require_relative '../tool/console.rb'
# require_relative '../app/follower.rb'

require "pry"

class Cult

attr_accessor :name, :location, :slogan
attr_reader :founding_year

@@all = []
     
    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def self.locations 
        hash = {}
        self.all.each do |cult|
            if hash[cult.location] 
                hash[cult.location] += 1
            else 
                hash[cult.location] = 1
            end 
        end 
        return hash 
    end 

    def self.most_common_location
      hash = self.locations.max_by { |k, v|  v}
        array[0]
    end 

    def bloodoaths 
        BloodOath.all.select do |bloodoath|
            bloodoath.cult == self 
        end 
    end 

    def followers 
        self.bloodoaths.map do |bloodoath|
            bloodoath.follower 
        end 
    end 

    def recruit_follower(follower)
        BloodOath.new(self, follower,"2020-01-13")
        # @followers << follower
    end

    def cult_population  
       return self.followers.count
    end

    def self.all
       @@all
    end

    def self.find_by_name(string)
         @@all.select do |cult|
            cult.name == string
         end
    end 

    def self.find_by_location(place)
        @@all.select do |cult|
            cult.location == place
         end
    end 

    def self.find_by_founding_year(number)
        @@all.select do |cult|
            cult.founding_year == number
         end
    end 

    def average_age 
       age_sum = self.followers.sum do |follower|
            follower.age
        end 
        age_sum / followers.count * 1.0
    end 

    def my_followers_mottos
        self.followers.each do |follower|
            puts follower.life_motto
        end 
    end 

    def self.least_popular 
        self.all.min_by do |cult|
            cult.followers.length 
    end 
end 
   
end 