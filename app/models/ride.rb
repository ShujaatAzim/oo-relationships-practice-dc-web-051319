class Ride

    attr_reader :passenger, :distance, :driver
    @@all = []

    def initialize(passenger, driver, distance)
        @passenger = passenger
        @driver = driver
        @distance = distance.to_f
        @@all << self
    end

    def self.all
        @@all
    end

    # should find the average distance of all rides
    def self.average_distance
        distances = self.all.collect do |ride|
            ride.distance
        end
        return distances.sum / distances.count
    end
end
