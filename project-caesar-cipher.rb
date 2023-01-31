def caesar_cipher(string, shift_factor = 0)
  # Split the string into chars
  chars = string.split('')
  # Shift the chars according to the shift factor
  shifted_chars = chars.map do |char|
    if char.ord.between?(97, 122)
      ((char.ord - "a".ord + shift_factor) % 26 + "a".ord).chr
    elsif char.ord.between?(65, 90)
      ((char.ord - "A".ord + shift_factor) % 26 + "A".ord).chr
    else
      char
    end
  end
  shifted_chars.reduce { |a, c| a + c}
end
