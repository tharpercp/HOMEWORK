def reverser(str, &prc)
    prc.call(str.reverse)
end

def word_changer(str, &prc)
    sentence = str.split(" ")
    answer = sentence.map { |word| prc.call(word) }
    answer.join(" ")
end 

def greater_proc_value(int, prc_1, prc_2)
    answer = [prc_1.call(int), prc_2.call(int)]
    answer.max
end

def and_selector(arr, prc_1, prc_2)
    answer = []
    arr.each do |x|
        if prc_1.call(x) && prc_2.call(x)
            answer << x
        end
    end
answer
end 

def alternating_mapper(arr, prc_1, prc_2)
    answer = []
    arr.each.with_index do |x, i|
        if i % 2 == 0
            answer << prc_1.call(x)
        else 
            answer << prc_2.call(x)
        end
    end
answer
end
