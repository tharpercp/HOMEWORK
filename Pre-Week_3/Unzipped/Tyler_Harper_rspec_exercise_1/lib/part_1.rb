def average(x, y)
    (x + y) / 2.0
end

def average_array(arr)
    (arr.sum/ arr.length.to_f)
end  

def repeat(str, int)
    str * int
end

def yell(str)
    str.upcase + "!"
end

def alternating_case(str)
    answer = []
    sent_arr = str.split(" ")
    sent_arr.each_with_index do |word, i|
        if i % 2 == 0
            answer << word.upcase
        else
            answer << word.downcase
        end
    end
    return answer.join(" ")
end






