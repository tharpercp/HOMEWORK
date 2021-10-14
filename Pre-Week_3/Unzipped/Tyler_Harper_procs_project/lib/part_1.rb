def my_map(arr, &prc)
    answer = []
    arr.each { |item| answer << prc.call(item) }
answer
end 

def my_select(arr, &prc)
    answer = []
    arr.each do |test|
        if prc.call(test)
            answer << test
        end
    end
answer
end

def my_count(arr, &prc)
    answer = []
    arr.each do |x|
        if prc.call(x)
            answer << x
        end
    end
answer.length
end

def my_any?(arr, &prc)
    arr.each do |ele|
        if prc.call(ele)
            return true
        end
    end
return false
end

def my_all?(arr, &prc)
    arr.each do |item|
        if !prc.call(item)
            return false
        end
    end
return true
end

def my_none?(arr, &prc)
    arr.each do |x|
        if prc.call(x)
            return false
        end
    end
return true
end