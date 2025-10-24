require 'minitest/autorun'

require_relative '7_area_retancle'

class ChallengeTest < Minitest::Test
  def test_it_should_calc_area_of_retancle
    want = 300
    got = calc_area_room_retancle(15,20)
    assert_equal want, got
  end

  def test_it_should_convert_metric_to_imperial
    want = 27.871 # Valor esperado
    got= convert_feet_to_metric(300) # Chamada pra função
    assert_equal want, got
  end
end
