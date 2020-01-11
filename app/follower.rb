class Follower
    attr_accessor :life_moto
    attr_reader :name, :age

    @@all = []

    def initialize(name, age, life_moto)
        @name = name
        @age = age
        @life_moto = life_moto

        @@all << self
    end

    def self.all
        @@all
    end

    def cults
        all_cults = []

        BloodOath.all.each { |membership| all_cults << membership.cult if membership.follower == self }

        all_cults
    end

    def join_cult(cult)
        BloodOath.new(cult, self)
    end

    def self.of_a_certain_age(above_age)
        Follower.all.select { |follower| follower.age >= above_age  }
    end
end