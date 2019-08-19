class Narwhal
    attr_reader :name, :weight

    def initialize(attrs)
        @name = attrs[:name]
        @cute = attrs[:cute]
        @weight = attrs[:weight]
    end

    def cute?
        @cute
    end
end
