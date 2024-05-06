# Implement function that will search for longest sequence of same symbols, case ignored.
# Examples:
# 'aaab' => 3
# 'caAb' => 2
# '' => 0
# 'abc' => 1

# DO NOT MODIFY CODE BELOW
require_relative '../lib/sequence'
require 'test/unit'

class TestSequence < Test::Unit::TestCase
  def test_same_case
    assert_equal 3, sequence('aaab'), 'Should count for same case'
  end
  def test_mixed_case
    assert_equal 2, sequence('caAb'), 'Should count for mixed case'
  end

  def test_empty
    assert_equal 0, sequence(''), 'Should handle empty strings'
  end

  def test_single_letter
    assert_equal 1, sequence('abc'), 'Should count for single letter sequence'
  end

end

