def select_even_nums(arr)
    arr.select { |nums| nums % 2 == 0 }
end

def reject_puppies(dogs)
    dogs.reject {|doggo| doggo["age"] < 3 }
end

def count_positive_subarrays(arr)
    arr.count { |x| x.sum > 0 }
end

def aba_translate(str)
    vowels = "aeiouAEIOU"
    answer = ""
    str.each_char do |x|
        if vowels.include?(x)
            answer += x + "b" + x
        else
            answer += x
        end
    end
answer
end

def aba_array(arr)
    arr.map { |aba| aba_translate(aba) }
end
