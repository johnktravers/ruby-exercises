class Dragon
    attr_reader :name, :color, :rider

    def initialize(name, color, rider)
        @name = name
        @color = color
        @rider = rider
        @hunger = true
        @hunger_level = 3
    end

    def hungry?
        @hunger
    end

    def eat
        @hunger_level -= 1
        if @hunger_level <= 0
            @hunger = false
        end
    end

end
