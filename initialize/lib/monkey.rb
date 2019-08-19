class Monkey
    attr_reader :name, :type, :favorite_food

    def initialize(attrs)
        @name = attrs[0]
        @type = attrs[1]
        @favorite_food = attrs[2]
    end

end
