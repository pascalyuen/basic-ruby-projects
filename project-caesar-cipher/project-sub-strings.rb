dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def sub_strings(words, dictionary)
  # Turn the string into an array of lowercase words
  word = words.downcase.split(" ")
  count = {}
  # Check each word in the string against each word in the dictionary
  dictionary.each do |substring|
    word.each do |w|
      if w.include?(substring)
        unless count[substring]
          count[substring] = 0
          count[substring] += 1
        else
          count[substring] += 1
        end
      end
    end
  end
  count
end

p sub_strings("Howdy partner, sit down! How's it going?", dictionary)