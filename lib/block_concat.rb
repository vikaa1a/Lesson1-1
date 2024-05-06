# @param [String] a
# @param [String] b
# @param [Integer] n
def block_concat(_a, _b, _n)
  result = ''
  a_blocks = _a.chars.each_slice(_n).to_a
  b_blocks = _b.chars.each_slice(_n).to_a

  max_blocks = [a_blocks.length, b_blocks.length].max

  max_blocks.times do |i|
    result += (a_blocks[i] || []).join
    result += (b_blocks[i] || []).join
  end

  result
end
