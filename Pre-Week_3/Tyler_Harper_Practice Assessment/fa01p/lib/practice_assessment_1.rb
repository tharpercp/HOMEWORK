# Define your methods here. 
def first_letter_vowel_count(str)
    answer = str.split(" ")
    vowels = "aeiouAEIOU"
    count = 0
    answer.each do |word|
        if vowels.include?(word[0])
            count += 1
        end
    end
count
end

def count_true(arr, prc)
    answer = 0
    arr.each do |ele| 
        if prc.call(ele)
            answer += 1
        end
    end
answer
end

def procformation(arr, prc_1, prc_2, prc_3)
    answer = []
    arr.each do |ele|
        if prc_1.call(ele)
            answer << prc_2.call(ele)
        else
            answer << prc_3.call(ele)
        end
    end
answer
end

def array_of_array_sum(arr)
    total_sum = 0
    arr.each { |sub_arr| total_sum += sub_arr.sum }
    total_sum
end

def selective_reverse(str)
    vowels = "aeiouAEIOU"
    str_arr = str.split(" ")
    answer = str_arr.map do |word|
        if vowels.include?(word[0]) || vowels.include?(word[-1])
            word
        else
            word.reverse
        end
    end
answer.join(" ")
end

def hash_missing_keys(hash, *arr)
    if arr == nil
        return []
    else
        answer = arr.select { |ele| hash.has_key?(ele) == false }
    end
answer
end



