def partition(arr, n)
    lower = arr.select {|num| num < n }
    higher = arr.select { |num| num >= n }
[lower, higher]
end

def merge (hash_1, hash_2)
    answer = Hash.new(0)
    hash_1.each do |k, v| 
        answer[k] = v
    end
    hash_2.each do |key, val|
        answer[key] = val
    end
answer
end

def censor(sentence, words)
    sent_arr = sentence.split(" ")
    answer = sent_arr.map do |word|
        if words.include?(word.downcase)
            bleep(word)
        else
            word
        end
    end
answer.join(" ")
end 


def bleep(word)
    vowels = "aeiouAEIOU"
    answer = ""
    word.each_char do |char|
        if vowels.include?(char)
            answer += "*"
        else 
            answer += char
        end
    end
answer
end 

def power_of_two?(x)
    check = Math.log2(x)
    if x == 1
        true
    elsif check.to_i == check.to_f 
        true
    else
        false
    end
end

