Learn more or give us feedback
require_relative '../config/environment.rb'
# require_relative '../app/cult.rb'
# require_relative '../tool/console.rb'

require "pry"
class Follower 

attr_accessor :name, :age, :life_motto

@@all = [] 

    def initialize(name, age, life_motto)
        @name = name 
        @age = age 
        @life_motto = life_motto
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    def bloodoaths 
        BloodOath.all.select do |bloodoath|
            bloodoath.follower == self 
        end    
    end 

    def cults 
        self.bloodoaths.map do |bloodoath|
            bloodoath.cult
        end 
    end 

    def join_cult(cult) 
        cult.followers << self 
    end 

    def self.of_a_certain_age(int)
        @followers.select do |follower|
            follower.age >= int
        end
    end

    def my_cult_slogans
        self.cults.each do |cult|
           puts cult.slogan
        end 
    end

    def self.most_active
       self.all.max_by do |follower|
        follower.cults.count
       end
    end

    def self.top_ten
        array = self.all.sort_by do |follower|
         follower.cults.length
        end
       return array.reverse.slice(0..10)
    end 

end 
