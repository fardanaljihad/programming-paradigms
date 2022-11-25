class Vehicle
    attr_accessor :year

    def initialize(year)
        @year = year
    end

    def printStats
        puts "#{self.year}"
    end
end

class Car < Vehicle
    attr_accessor :model, :brand

    def initialize(year, model, brand)
        super year
        @model = model
        @brand = brand
    end

    def printStats
        super
        puts "#{@model}"
        puts "#{@brand}"
    end
end

mobil = Vehicle.new(1995)

puts mobil.printStats

mobil2 = Car.new(1998, "supercar", "BMW")

puts mobil2.printStats()