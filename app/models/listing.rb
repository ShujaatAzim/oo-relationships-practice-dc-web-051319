class Listing

attr_reader
attr_accessor :city, :guest

@@all = []

def initialize(city)
    @city = city
    @@all << self
end

def guests
    my_guest_names = Trip.all.select do |trip|
        trip.listing == self
    end
    my_guest_names.collect do |trip|
        trip.guest.name
    end
end

def trips
    my_trips = Trip.all.select do |trip|
        trip.listing == self
    end
end

def trip_count
    self.trips.count
end

def self.all
    @@all
end

def self.find_all_by_city(city)
    Listing.all.select do |listing| 
        listing.city == city
    end
end

def self.most_popular
    popular = {}
    Trip.all.each do |trip|
        if popular[trip.listing.city]
            popular[trip.listing.city] += 1
        else
            popular[trip.listing.city] = 1
        end
    end
        max = popular.values.max
        popular.select do |key, value|
        value == max
    end.keys

    end
    
end
