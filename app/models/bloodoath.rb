require_relative './follower.rb'
require_relative './cult.rb'

class BloodOath
    @@all = []
    
    attr_accessor :initiation_date, :cult, :follower, :date

    def initialize(date, cult, follower)
        @cult = cult
        @follower = follower
        @date = date
        @@all << self
    end

    def self.all #BloodOath.all
        @@all #returns an Array of all the blood oaths
    end

    def self.first_oath
        @@all.first 
    end


end
