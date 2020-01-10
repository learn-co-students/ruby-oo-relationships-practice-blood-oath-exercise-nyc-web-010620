require_relative './cult.rb'
require_relative './bloodoath.rb'

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

    def join_cult(date,cult)
        BloodOath.new(date,cult,self)
    end

    def cults
        BloodOath.all.map {|belongs_to| }
    end

    def self.of_a_certain_age(int)
        all.select {|follower| follower.age >= int }
    end 

    def self.my_cults_slogans
        self.select{ |belongs| Cult.belongs.slogan} 
    end

    def most_active
        all.max_by {|num_cults| num_cults.cults}
    end
        
end
