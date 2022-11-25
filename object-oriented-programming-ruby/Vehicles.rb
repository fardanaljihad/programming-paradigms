class Vehicle
    attr_accessor :year

    def initialize(year)
        @year = year
    end

    def printStats
        puts "#{self.year}"
    end
end

module OldtimerCheck
    def isOldTimer? (year)
        (2022-year) > 30
    end
end

class Car < Vehicle

    include OldtimerCheck

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
        puts isOldTimer? (year)
    end
end

mobil = Vehicle.new(1998)
puts mobil.printStats

mobil2 = Car.new(1990, "supercar", "BMW")
puts mobil2.printStats