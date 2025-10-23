require 'minitest/autorun'
require_relative '01-hello'

class HelloTest < Minitest::Test

  def test_it_say_hello_to_name
    want = "Hello Thiago, nice to meet you!"
    got = greet("Thiago")

    assert_equal want, got
  end
end
