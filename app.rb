require "pry"

class Building

attr_reader :address
attr_accessor :name, :number_of_tenants

@@buildings = []

    def initialize(name, address, number_of_floors, number_of_tenants)
        @name = name
        @address = address
        @number_of_floors = number_of_floors
        @number_of_tenants = number_of_tenants
        @@buildings << self
    end

    def name_and_address
        puts "#{@name}, #{address}"
    end

    def self.average_number_of_tenants_in_a_building
       buildings.reduce(0) { |sum, building| sum + building.number_of_tenants} / buildings.size
    end

    def average_number_of_tenants_per_floor
        @number_of_tenants / @number_of_floors
    end

    def self.buildings
        @@buildings
    end

end

building1 = Building.new("Tower", "1st Street", 5, 40)
building2 = Building.new("Short Building", "2nd Street", 2, 20)
building3 = Building.new("Long Building", "3rd Street", 10, 80)

binding.pry
0

# Build a Ruby class for a Building that:
#DONE. Initializes with a name, address, number of floors, and number of tenants
#DONE. The name and number of tenants should be readable and writeable
#DONE. The address should be readable
#DONE. The number of floors should not be readable or writeable
#DONE. The class should keep track of all buildings that are created
#DONE. The class should tell the average number of tenants in a building
#DONE. A building should have a placard method that returns the name and address of the building
#DONE. A building should have a method returns the average number of tenants per floor

# Then:
# DONE. Make objects for the three buildings on this corner. Use a Fermi estimate for the number of tenants.