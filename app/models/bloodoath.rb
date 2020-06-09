class BloodOath
    attr_reader :cult, :follower, :initiation_date
    @@all = []

    def initialize(cult,follower,date)
        @cult = cult
        @follower = follower
        @initiation_date = date
        @@all << self
    end

    def self.all
        @@all
    end

end