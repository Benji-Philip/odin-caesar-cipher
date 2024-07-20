words = gets.chomp
dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

def substrings(words, dictionary)
  hash_of_results = Hash.new(0)
  dictionary.each do |word|
    temp = words.downcase
    while temp.match?(word)
      temp.sub!(word, " ")
      hash_of_results[word] += 1
    end
  end
  hash_of_results
end

puts substrings(words, dictionary)
