def count_em(str, substr)
  str.scan(/(?=#{substr})/).count
end

def substrings(word, substrings)
  counter = {}
  substrings.each do |element|
    counter[element] = count_em(word, element) if count_em(word, element).positive?
  end
  counter
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
