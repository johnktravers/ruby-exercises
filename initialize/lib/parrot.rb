class Parrot
    attr_reader :name, :known_words, :sound

    def initialize(attrs)
        @name = attrs[:name]
        @known_words = attrs[:known_words]

        if attrs[:sound] == nil
            @sound = "Squawk!"
        else
            @sound = attrs[:sound]
        end
    end

end
