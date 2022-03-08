# Project description:
# Implement a method #substrings that takes a word as the first argument and
# then an array of valid substrings (your dictionary) as the second argument. It
# should return a hash listing each substring (case insensitive) that was found in
#  the original string and how many times it was found.

# word is a string, dictionary is a array of substrings
# utilize scan to generate an array of sub pattern matches for each sub-substring
# in the dictionary. Use the length of this array to increment the count for
# the substring in a hash


def substrings(word, dictionary)
  sub_hash = {}
  dictionary.each do |sub_string|
    match_array = word.downcase.scan(sub_string)
    sub_hash[sub_string] = match_array.length if match_array.length > 0
  end

  return sub_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)
