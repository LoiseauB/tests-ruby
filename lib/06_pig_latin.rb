def translate str
  arr = str.split
  alpha = ('a'..'z').to_a
  vowels = %w[a e i o]
  consonants = alpha - vowels
  result =[]
  arr.each do |word|
    if vowels.include?(word[0])
      new = word + 'ay'
      result.push(new)
    elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
      new = word[3..-1] + word[0..2] + 'ay'
      result.push(new)
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      new  = word[2..-1] + word[0..1] + 'ay'
      result.push(new)
    elsif consonants.include?(word[0])
      new = word[1..-1] + word[0] + 'ay'
      result.push(new)
    end
  end
  return result.join(' ')
end