class BloodOath
    attr_reader :cult, :follower, :initiation_date

    @@all = []

    def initialize(cult, follower)
        @cult = cult
        @follower = follower
        @initiation_date = Time.new.to_s.split(" ")[0]

        @@all << self
    end

    def self.all
        @@all
    end
end