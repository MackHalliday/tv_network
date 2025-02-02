require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/show'
require 'pry'

class CharacterTest < MiniTest::Test

  def setup
    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
  end

  def test_it_exist

    assert_instance_of Character, @kitt
  end

  def test_character_attributes

    assert_equal "KITT", @kitt.name
    assert_equal "William Daniels", @kitt.actor
    assert_equal 1_000_000, @kitt.salary
  end
end
