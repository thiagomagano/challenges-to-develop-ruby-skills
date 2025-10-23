require 'minitest/autorun'

require_relative '5_simple_math'

class ChallengeTest < Minitest::Test
  def test_add
    want = 12
    got= add(10,2)
    assert_equal want, got
  end
  def test_sub
    want = 8
    got= sub(10,2)
    assert_equal want, got
  end
  def test_multi
    want = 20
    got= multi(10,2)
    assert_equal want, got
  end
  def test_div
    want =  5
    got= div(10,2)
    assert_equal want, got
  end

  def test_simple_math
    want = "10 + 2 = 12\n10 - 2 = 8\n10 * 2 = 20\n10 / 2 = 5"
    got = simple_math(10,2)

    assert_match want, got
  end
end
