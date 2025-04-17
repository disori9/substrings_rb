def substrings(words, dictionary)
  words_array = words.downcase.split(" ")
  substrings_hash = Hash.new(0)

  dictionary.each do |word|
    words_array.each do |string|
      if string.include?(word)
        substrings_hash[word] += 1
      end
    end
  end
  
  substrings_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
new_dict = substrings("Howdy partner, sit down! How's it going?", dictionary)

p new_dict