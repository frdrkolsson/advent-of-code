require 'minitest/autorun'
require_relative 'one'

class OneTest < Minitest::Test
  def test_case_one
    assert_equal 2, One.fuel_for(12)
  end

  def test_case_two
    assert_equal 2, One.fuel_for(14)
  end

  def test_case_three
    assert_equal 654, One.fuel_for(1969)
  end

  def test_case_four
    assert_equal 33583, One.fuel_for(100756)
  end

  # Part two
  def test_case_five
    assert_equal 2, One.actual_fuel_for(12)
  end

  def test_case_six
    assert_equal 966, One.actual_fuel_for(1969)
  end

  def test_case_seven
    assert_equal 50346, One.actual_fuel_for(100756)
  end
end

