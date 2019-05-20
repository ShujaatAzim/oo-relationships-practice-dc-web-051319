require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

guest1 = Guest.new("Natany")
guest2 = Guest.new("Joe")
guest3 = Guest.new("Dan")
listing1 = Listing.new("Potomac")
listing2 = Listing.new("Tokyo")
trip1 = Trip.new(listing1, guest1)
trip2 = Trip.new(listing2, guest2)
trip3 = Trip.new(listing1, guest2)
trip4 = Trip.new(listing2, guest1)

Pry.start