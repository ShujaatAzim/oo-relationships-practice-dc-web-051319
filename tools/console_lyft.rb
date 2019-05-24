require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

passenger1 = Passenger.new("Shu")
passenger2 = Passenger.new("Gian")
passenger3 = Passenger.new("Natany")

driver1 = Driver.new("Dan")
driver2 = Driver.new("Keith")
driver3 = Driver.new("Sean")

ride1 = Ride.new(passenger1, driver1, 10.0)
ride2 = Ride.new(passenger2, driver2, 6.5)
ride3 = Ride.new(passenger3, driver3, 120)
ride4 = Ride.new(passenger1, driver2, 40.0)

puts "\n"
puts "Driver tests:"
puts "\n"
puts "1) Driver.all contains driver2"
puts Driver.all.include?(driver2)
puts "\n"
puts "2) driver2.rides contains ride2, ride4, and not ride3"
puts driver2.rides.include?(ride2)
puts driver2.rides.include?(ride4)
puts !driver2.rides.include?(ride3)
puts "\n"
puts "3) driver2.passengers contains passengers 1 & 2"
puts driver2.passengers.include?(passenger1)
puts driver2.passengers.include?(passenger2)
puts "\n"


 
Pry.start
0