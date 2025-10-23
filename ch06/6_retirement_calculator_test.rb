# Base test file
require 'minitest/autorun'

# TODO: Add a require_relative to your main challenge file
# e.g., require_relative '1_my_challenge'
require_relative '6_retirement_calculator'

class ChallengeTest < Minitest::Test
  def test_it_calc_years_to_retiriment
    want = 30
    got= calc_years_to_retirement(20,50)
    assert_equal want, got
  end

  def test_calc_year_of_retirement
    want = 2055
    got= calc_year_of_retirement(30)
    assert_equal want, got
  end
end
