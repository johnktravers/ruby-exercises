class Bag
  attr_reader :candies

  def initialize
    @candies = []
  end

  def empty?
    count == 0
  end

  def count
    @candies.length
  end

  def << candy
    @candies.push(candy)
  end

  def contains?(type)
    @candies.find do |candy|
      candy.type == type
    end
  end

end
