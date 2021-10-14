# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".
def compress_str(str)
    answer = []
    consec = 1 
    (0...str.length).each do |i|
        if str[i] == str[i + 1]
            consec += 1
        else
            if consec == 1
                answer << str[i]
            else
                answer << consec
                answer << str[i]
                consec = 1
            end 
        end
    end
return answer.join("")
end 



p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
