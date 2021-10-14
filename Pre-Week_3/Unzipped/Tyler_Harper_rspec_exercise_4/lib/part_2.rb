def proper_factors(n)
    answer = []
    (1...n).each do |x|
        if n % x == 0
            answer << x
        end
    end
answer
end

def aliquot_sum(n)
    answer = proper_factors(n)
    answer.sum
end

def perfect_number?(n)
    if n == aliquot_sum(n)
        true
    else
        false
    end
end

def ideal_numbers(n)
    answer = []
    test = 6
    while answer.length < n
        if perfect_number?(test)
            answer << test
            test += 1
        else
            test += 1
        end
    end
answer
end 