class Lion
    attr_reader :name, :sound

    def initialize(attrs)
        @name = attrs[:name]
        @sound = attrs[:sound]
    end

end
