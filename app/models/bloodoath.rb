class BloodOath
    attr_reader :initiation_date, :cult, :follower

    @@all = []
    def initialize(initiation_date, cult, follower)
        @initiation_date, @cult, @follower = initiation_date, cult, follower #BloodOath#initiation_date
        @@all << self
    end

    def self.all
        @@all #BloodOath.all #returns an Array of all the blood oaths
    end

    def self.first_oath #BloodOath.first_oath returns the Follower instance for the follower that made the very first blood oath
        @@all.length > 0 ? @@all[0].follower : "No blood oaths have been made"
    end

end

