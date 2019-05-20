class Guest

    attr_reader :name
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def listings
        my_guest_stays = Trip.all.select do |trip|
            trip.guest == self
        end
        my_guest_stays.select do |guest|
            guest.listing
        end

    end

    def trips
        my_trips = Trip.all.select do |trip|
            trip.guest == self
        end

    end

    def trip_count
        self.trips.count
    end

    def self.all
        @@all
    end

    def self.pro_traveller
       pro_hash = Guest.all.select do |guest|
            if guest.trip_count > 1
                guest.name
            end
        end
    end

    def self.find_all_by_name(name)
    end


end

