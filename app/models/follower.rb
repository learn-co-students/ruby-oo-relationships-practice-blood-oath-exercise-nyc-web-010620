class Follower
    attr_reader :name, :life_motto
    attr_accessor :age

    @@all = []
    def initialize(name, age, life_motto)
        @@all << self

        @name = name #Follower#name returns a String that is the follower's name
        @age = age #Follower#age returns an Integer that is the age of the follower
        @life_motto = life_motto #Follower#life_motto returns a String that is the follower's life motto
    end

    def self.all #Follower.all returns an Array of all the followers
        @@all
    end

    def self.of_a_certain_age(input_number) #Follower.of_a_certain_age takes an Integer argument that is an age and returns an Array of followers who are the given age or older
        @@all.select{|member| member.age < input_number}
    end

    def join_cult(cult) #Follower#join_cult takes in an argument of a Cult instance and adds this follower to the cult's list of followers
        cult.population << self
    end

    def cults #Follower#cults returns an Array of this follower's cults
        Cult.all.select{|cult| cult.population.include?(self)}
    end


end