class Vehicle
    attr_accessor :year

    def initialize(y)
        self.year = y
    end

    def printStats
        "#{self.year}"
    end
end

mobil = Vehicle.new(1995)

puts mobil.printStats