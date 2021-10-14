def all_words_capitalized?(arr)
    arr.all? { |x| x.capitalize == x }
end

def no_valid_url?(arr)
    arr.none? { |url| url.end_with?(".com", ".io", ".net", ".org") }
end 

def any_passing_students?(arr)
    arr.any? { |student| student[:grades].sum / student[:grades].length >= 75 }
end 