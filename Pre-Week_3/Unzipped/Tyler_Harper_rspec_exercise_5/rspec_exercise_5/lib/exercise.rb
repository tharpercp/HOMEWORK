# def zip(*arr)
#     arr.transpose
# end

# def prizz_proc(arr, prc_1, prc_2)
#     arr.select! { |ele| (prc_1.call(ele) || prc_2.call(ele)) && !(prc_1.call(ele) && prc_2.call(ele)) }
# end

# def maximum(arr, &prc)
#     if arr == []
#         return nil
#     else
#         new_arr = arr.map { |ele| prc.call(ele) }
#         indexes = []
#         new_arr.each.with_index do |ele, i|
#             if ele == new_arr.max
#                 indexes << i
#             end
#         end
#     end
# arr[(indexes[-1])]
# end

# def zany_zip(*arr)
#     answer = []
#     length = 0
#     arr.each.with_index do |sub_arr, i|
#         if arr[i].length > length
#             length = arr[i].length
#         end
#     end
#     arr.each do |ele|
#         while ele.length < length
#             ele << nil
#         end
#     end
# arr.transpose
# end

# def my_group_by(arr, &prc)
#     answer = Hash.new(0)
#     arr.each do |ele|
#         answer[(prc.call(ele))] = arr.select { |x| prc.call(x) == prc.call(ele) }
#     end
# answer
# end

# def max_tie_breaker(arr, prc, &prc1)
#     new_arr = arr.map { |ele| prc1.call(ele) }
#     max = new_arr.max
#     if arr == []
#         return nil
#     end
#     if new_arr.count(max) < 2
#         return arr[(new_arr.index(max))]
#     else
#         maxes = []
#         new_arr.each.with_index do |ele, i|
#             if ele == max
#                 maxes << arr[i]
#             end
#         end
#         answer = maxes.map { |x| prc.call(x) }
#         maxi = answer.max
#         if answer.count(maxi) > 1
#             return arr[(new_arr.index(max))]
#         end
#     end
# maxes[(answer.index(maxi))]
# end

        



        


# def silly_syllables(str)
#     splitty = str.split(" ")
#     splitty.each.with_index do |word, i|
#         if vowel_count(word) > 1
#             splitty[i] = splitty[i][(find_fl(word))[0]..find_fl(word)[1]]
#         end
#     end
# splitty.join(" ")
# end

# def vowel_count(word)
#     counter = 0
#     vowels = "aeiouAEIOU"
#     word.each_char { |char| counter += 1 if vowels.include?(char) }
#     counter
# end
        
# def find_fl(word)
#     first = 0
#     last = 0
#     vowels = "aeiouAEIOU"
#     word.each_char.with_index do |char, i|
#         if vowels.include?(char)
#             first = i
#             break
#         end
#     end
#     x = -1
#     while x > 0 - word.length
#         if vowels.include?(word[x])
#             last = x
#             break
#         else
#             x -= 1
#         end
#     end
# [first, last]
# end

def zip(*arr)
    arr.transpose
end

def prizz_proc(arr, prc1, prc2)
    arr.select! { |x|   (prc1.call(x) || prc2.call(x)) && !(prc1.call(x) && prc2.call(x)) }
end

def zany_zip(*arr)
    arr.transpose 
end



