# Debug this code to pass rspec! There are 2 mistakes to fix.

# Write a method, many_vowel_words, that accepts a sentence string as an arg. 
# The method should return a new sentence containing only the words that contain two or more vowels.

require "byebug"

def many_vowel_words(sentence)
    words = sentence.split(" ")
    answer = words.select { |word| num_vowels(word) > 1 }
    answer.join(" ")
end

def num_vowels(word)
    count = 0
    vowels = "aeiou"
    word.each_char do |char|
        count += 1 if vowels.include?(char)
    end 
    count
end