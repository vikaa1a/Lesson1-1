# Implement function in block_concat.rb that will merge strings by following rules:
# Inputs: 2 strings and block size. Blocks should be added from strings by turns.
# If one of the string is empty just copy the rest of the another string.
# Last block can be smaller.

# DO NOT MODIFY CODE BELOW
require_relative '../lib/block_concat'
require 'test/unit'

class TestBlockConcat < Test::Unit::TestCase
  def test_whole_blocks 
    assert_equal 'fffbbbfffbbbb', block_concat('ffffff', 'bbbbbb', 3), 'Should concat whole blocks'
  end

  def test_small_blocks
    assert_equal 'fffbbfff', block_concat('ffffff', 'bb', 3), 'Should concat smaller blocks'
  end

  def test_empty
    assert_equal '', block_concat('', '', 5), 'Should handle empty strings'
  end
end
