class Hobbit
  attr_reader :name, :disposition, :age

  def initialize(name, disposition = "homebody")
    @name = name
    @disposition = disposition
    @age = 0
    @short = true
    @has_ring = assign_ring
  end

  def assign_ring
    if @name.downcase == "frodo"
      true
    else
      false
    end
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    @age > 32
  end

  def old?
    @age > 100
  end

  def has_ring?
    @has_ring
  end

  def is_short?
    @short
  end

end
