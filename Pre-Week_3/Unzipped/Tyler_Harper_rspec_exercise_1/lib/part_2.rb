def hipsterfy(str)
    removed = false
    i = -1
    vowels = "aeiouAEIOU"
    answer = ""
    while i > 0 - str.length - 1
        if removed
            answer += str[i]
            i -= 1
        else
            if vowels.include?(str[i])
                i -= 1
                removed = true
                next
            else
                answer += str[i]
                i -= 1
            end
        end
    end
    answer.reverse 
end

def vowel_counts(str)
    vowels = "aeiouAEIOU"
    answer = Hash.new(0)
    check = str.downcase
    str.each_char do |char|
        if answer.has_key?(char.downcase)
            next
        elsif vowels.include?(char)
            answer[char.downcase] = check.count(char.downcase)
        end
    end
    answer
end

def caesar_cipher(str, int)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    answer = ""
    if int > 26
        int = int - (26 * (int / 26))
    end
    str.each_char do |char|
        if alphabet.include?(char)
            place = alphabet.index(char)
            new_letter = place + int
            if new_letter > 25
                answer += alphabet[(new_letter - 26)]
            else
                answer += alphabet[(new_letter)]
            end
        else
            answer += char 
        end
    end 
answer
end


