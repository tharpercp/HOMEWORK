def my_reject(arr, &prc)
    answer = arr.select { |ele| !prc.call(ele) }
    answer
end

def my_one?(arr, &prc)
    counter = 0
    arr.each do |ele| 
        if prc.call(ele)
            counter += 1
        end
    end
    if counter == 1
        true
    else 
        false
    end
end

def hash_select(hash, &prc)
    answer = Hash.new(0)
    hash.each do |k, v|
        if prc.call(k, v)
            answer[k] = v
        end
    end
answer
end

def xor_select(arr, prc_1, prc_2)
    arr.select! { |ele| (prc_1.call(ele) || prc_2.call(ele)) && !(prc_1.call(ele) && prc_2.call(ele)) }
    arr
end

def proc_count(x, arr)
    counter = 0
    arr.each do |prc| 
        if prc.call(x)
            counter += 1
        end
    end
counter
end


