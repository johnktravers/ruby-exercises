gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/wizard'

class WizardTest < Minitest::Test
  def setup
    @eric = Wizard.new("Eric")
    @alex = Wizard.new("Alex")
    @valerie = Wizard.new("Valerie", bearded: false)
  end

  def test_has_name
    assert_equal "Eric", @eric.name
  end

  def test_can_have_different_name
    assert_equal "Alex", @alex.name
  end

  def test_is_bearded_by_default
    assert_equal true, @eric.bearded?
  end

  def test_is_not_always_bearded
    assert_equal false, @valerie.bearded?
  end

  def test_has_root_powers
    assert_equal "sudo chown ~/bin", @valerie.incantation("chown ~/bin")
  end

  def test_has_lots_of_root_powers
    assert_equal "sudo rm -rf /home/mirandax", @alex.incantation("rm -rf /home/mirandax")
  end

  def test_starts_rested
    assert_equal true, @valerie.rested?
  end

  def test_can_cast_spells
    assert_equal "MAGIC MISSILE!", @alex.cast
  end

  def test_gets_tired_after_casting_three_spells
    2.times { @eric.cast }
    assert_equal true, @eric.rested?

    @eric.cast
    assert_equal false, @eric.rested?
  end

end
