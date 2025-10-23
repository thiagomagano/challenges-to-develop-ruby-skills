require 'minitest/autorun'
require_relative '02_count_characters'

class HelloTest < Minitest::Test

  def test_it_count_characters
    want = "Homer têm 5 letras."
    got = count_characters("Homer")

    assert_equal want, got
  end
end
