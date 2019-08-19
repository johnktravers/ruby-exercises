class Rabbit
    attr_reader :name

    def initialize(attrs)
        if attrs[:num_syllables] != 2
            @name = attrs[:name]
        else
            @name = attrs[:name].concat(" Rabbit")
        end
    end

end
