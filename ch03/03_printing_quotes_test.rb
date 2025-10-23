require 'minitest/autorun'
require_relative '03_printing_quotes'

class PrintingQuotesTest < Minitest::Test

  def test_it_printing_quotes
    want = "Obi-Wan Kenobi disse, \"These aren't the droids you're looking for\"."
    got = printing_quotes("Obi-Wan Kenobi", "These aren't the droids you're looking for")

    assert_equal want, got
  end
end
