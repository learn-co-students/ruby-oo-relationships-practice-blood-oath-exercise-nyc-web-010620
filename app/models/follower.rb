class Follower
    attr_accessor :age, :life_motto 
    attr_reader :name
    @@all = []

    def initialize(name,age,life_motto)
        @name = name
        @age = age
        @life_motto = life_motto

        @@all << self
    end

    def cults
        my_bloodoaths = BloodOath.all.select { |oath| oath.follower == self }
        my_cults = my_bloodoaths.map { |oath| oath.cult }
    end

    def join_cult(cult)
        BloodOath.new(cult,self)
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(age_int)
        self.all.select { |follower| follower.age == age_int }
    end

end