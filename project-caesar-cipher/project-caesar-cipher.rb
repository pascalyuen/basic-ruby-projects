def caesar_cipher(string, shift_factor = 0)
  # Split the string into chars
  chars = string.split('')
  # Shift the chars according to the shift factor
  shifted_chars = chars.map do |c|
    if c.ord.between?(97, 122)
      ((c.ord - "a".ord + shift_factor) % 26 + "a".ord).chr
    elsif c.ord.between?(65, 90)
      ((c.ord - "A".ord + shift_factor) % 26 + "A".ord).chr
    else
      c
    end
  end
  p shifted_chars
  shifted_string = shifted_chars.reduce { |a, c| a + c}
  p shifted_string
end