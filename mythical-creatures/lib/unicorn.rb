class Unicorn
    attr_reader :name, :color

    def initialize(name, color = "white")
        @name = name
        @color = color
    end

    def white?
        @color.casecmp?("white")
    end

    def say(words)
        "**;* ".concat(words, " **;*")
    end

end
