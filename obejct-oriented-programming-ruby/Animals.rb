class Animal
    def speak
        "Hello!"
    end
end

class GoodSheep < Animal    # => Inheritance
    attr_accessor :name

    def initialize(n)   # => Constructor
        self.name = n
    end

    def speak   # => Override
        "#{self.name} bersuara EMbeeeeee!"
    end
end

class Cat < Animal
    attr_accessor :namaHewan

    def initialize(n)
        self.namaHewan = n
    end

    def speak
        "#{self.namaHewan} bersuara meong!"
    end
end

domba = GoodSheep.new("Domba")  # => instansiasi object
kucing = Cat.new("Kucing")

puts domba.speak
puts kucing.speak