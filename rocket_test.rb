require "minitest/autorun"
require_relative "rocket"
require 'pry'

class RocketTest < Minitest::Test
  # Write your tests here!
  def setup
    @rocket = Rocket.new
  end

  def test_name
    result = @rocket.name

    assert result
  end

  def test_name_new
    @rocket.name = ("tenzin")

    assert_equal "tenzin",@rocket.name
  end

  def test_colour
    result = @rocket.colour

    assert result
  end

  def test_colour_new
    @rocket.colour = ("Green")

    assert_equal "Green", @rocket.colour
  end

  def test_flying?
    result = @rocket.flying?

    refute result
  end

  def test_lift_off_flying_is_false
    # binding.pry
    @rocket = Rocket.new(flying: true)
    result = @rocket.lift_off

    refute result
  end

  def test_lift_off_flying_is_true
    result = @rocket.lift_off

    assert result
  end

  def test_land_flying_is_true
    @rocket = Rocket.new(flying: true)
    result = @rocket.land

    assert result
  end

  def test_land_flying_is_false
    result = @rocket.land

    refute result
  end

  def test_status_flying_is_true
    @rocket = Rocket.new(flying: true)
    result = @rocket.status

    assert_equal "Rocket #{@rocket.name} is flying through the sky!", result
  end

  def test_status_flying_is_false
    result = @rocket.status

    assert_equal "Rocket #{@rocket.name} is ready for lift off!" , result
  end

end
