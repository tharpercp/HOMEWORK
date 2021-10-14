# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def largest_prime_factor(int)
    answer = []
    (2..int).each do |num|
        if int % num == 0
            if prime_check?(num)
                answer << num
            end
        end
    end
answer.max
end 



def prime_check?(num)
    if num < 2
        return false
    end
    (2...num).each do |x|
        if num % x == 0
            return false
        end
    end
return true
end 

def unique_chars?(str)
    str.each_char do |char|
        if str.count(char) > 1
            return false
        end
    end
return true
end

def dupe_indices(arr)
    answer = Hash.new(0)
    arr.each do |char|
        if arr.count(char) > 1
            answer[char] = []
        end
    end
    arr.each.with_index do |x, i|
        if answer.has_key?(x)
            answer[x] << i
        end
    end
answer
end  

def ana_array(arr_1, arr_2)
    if arr_1.length != arr_2.length
        return false
    end
    arr_1.each do |x|
        if !arr_2.include?(x)
            return false
        end
    end
    arr_2.each do |y|
        if !arr_1.include?(y)
            return false
        end
    end 
return true
end

