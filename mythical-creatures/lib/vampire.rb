class Vampire
    attr_reader :name, :pet

    def initialize(name, pet = "bat")
        @name = name
        @pet = pet
        @thirst = true
    end

    def thirsty?
        @thirst
    end

    def drink
        @thirst = false
    end

end
