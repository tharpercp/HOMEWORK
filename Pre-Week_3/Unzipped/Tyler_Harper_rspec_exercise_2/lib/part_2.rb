def palindrome?(str)
    i = 0
    j = -1 
    while i < str.length
        if str[i] != str[j]
            return false
        else 
            i += 1
            j -= 1
        end
    end
return true
end 

def substrings(str)
    answer = []
    str.each_char.with_index do |char, i| 
        str.each_char.with_index do |char_2, i2|
            if i > i2
                next
            else
                answer << str[i..i2]
            end
        end 
    end
answer
end

def palindrome_substrings(str)
    combos = substrings(str)
    answer = combos.select { |sub_string| palindrome?(sub_string) && sub_string.length > 1 }
    answer
end 
