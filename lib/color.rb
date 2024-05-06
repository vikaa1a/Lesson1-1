# @param [Integer] r
# @param [Integer] g
# @param [Integer] b
def color(r, g, b)
  def borders(n)
    return 0 if n < 0
    return 255 if n > 255
    n
  end
  
  r_hex = borders(r).to_s(16).rjust(2, '0')
  g_hex = borders(g).to_s(16).rjust(2, '0')
  b_hex = borders(b).to_s(16).rjust(2, '0')
  
    "#{r_hex}#{g_hex}#{b_hex}".upcase
end