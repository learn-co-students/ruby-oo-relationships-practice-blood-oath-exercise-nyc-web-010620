class Follower
    attr_reader :name
    attr_accessor :age, :life_motto
    @@all = []

    def initialize(name, age, life_motto)
        @name, @age, @life_motto = name, age, life_motto #Follower#name, #Follower#age, #Follower#life_motto
        @@all << self
    end

    def self.all #Follower.all returns an Array of all the followers
        @@all
    end

    def cults #Follower#cults returns an Array of this follower's cults
        BloodOath.all.select{|oaths| oaths.follower == self}
    end

    def join_cult(cult_instance) #Follower#join_cult takes in an argument of a Cult instance and adds this follower to the cult's list of followers
        self.age >= cult_instance.minimum_age ? BloodOath.new(Time.now.strftime("%Y-%m-%d"),cult_instance, self) : "Too Young To Join"
    end

    def self.of_a_certain_age(input_age) #Follower.of_a_certain_age takes an Integer argument that is an age and returns an Array of followers who are the given age or older
        @@all.select{|instance| instance.age >= input_age}
    end

    def my_cults_slogan #Follower#my_cults_slogans prints out all of the slogans for this follower's cults
        BloodOath.all.select{|oaths| oaths.follower == self}.map{|oaths| oaths.cult.slogan}.uniq
    end

    def self.most_active #Follower.most_active returns the Follower instance who has joined the most cults
        activity = Hash.new{0}
        BloodOath.all.each{|enum| activity[enum.follower] += 1}
        activity.sort_by {|k, v| v}.last[0]
    end

    def self.top_ten #Follower.top_ten returns an Array of followers; they are the ten most active followers
        activity = Hash.new{0}
        BloodOath.all.each{|enum| activity[enum.follower] += 1}
        activity.sort_by{|k, v| v}.reverse.take(10).map{|enum| enum[0]}
    end
end