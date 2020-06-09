class Bloodoath
    attr_reader :initiation_date

    @@all = []

    def initialize(initiation_date, cult, follower)
        @@all << self

        cult.recruit_follower(follower)
        @initiation_date = initiation_date #BloodOath#initiation_date returns a String that is the initiation date of this blood oath in the format YYYY-MM-DD.
    end

    def self.all #BloodOath.all returns an Array of all the blood oaths
        @@all
    end

    
end