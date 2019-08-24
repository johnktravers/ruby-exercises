class Wizard
  attr_reader :name

  def initialize(name, bearded = {bearded: true})
    @name = name
    @bearded = bearded[:bearded]
    @spell_count = 0
  end

  def bearded?
    @bearded
  end

  def incantation(spell)
    "sudo ".concat(spell)
  end

  def rested?
    if @spell_count < 3
      true
    else
      false
    end
  end

  def cast
    @spell_count += 1
    "MAGIC MISSILE!"
  end

end
