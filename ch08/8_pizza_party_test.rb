require 'minitest/autorun'

require_relative '8_pizza_party'

class ChallengeTest < Minitest::Test
  def test_it_should_calc_pizza_per_person
    want = 2 # Valor esperado
    got= get_pizza_per_person(8,2,8)
    assert_equal want, got
  end

  def test_it_should_calc_total_slices
    want = 16 # Valor esperado
    got= get_total_slices(2,8)
    assert_equal want, got
  end

  def test_it_should_calc_leftover
    want = 0 # Valor esperado
    got= get_leftover(16, 8)
    assert_equal want, got
  end
end
