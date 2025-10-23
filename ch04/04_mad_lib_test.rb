require 'minitest/autorun'
require_relative '04_mad_lib'

class MadLibTest < Minitest::Test

  def test_it_makes_a_mad_lib_game
    want = "Do you walk your blue dog quickly? That's hilarious!"
    got = mad_lib("dog", "walk", "blue", "quickly")

    assert_equal want, got
  end
end
