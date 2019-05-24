class Passenger

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end


    # returns all rides a passenger has been on
    def rides
        Ride.all.select do |ride|
            ride.passenger == self
        end
    end

    # returns all drivers a passenger has had
    def drivers
        self.rides.select do |ride|
            ride.driver
        end
    end

    # should calculate the total distance the passenger has travelled with 
    # the service
    def total_distance
        self.rides.collect do |ride|
            ride.distance
        end.sum
    end

    # should find all passengers who have travelled over 100 miles with 
    # the service
    def self.premium_members
        self.all.select do |passenger|
            passenger.total_distance > 100
        end
    end

end