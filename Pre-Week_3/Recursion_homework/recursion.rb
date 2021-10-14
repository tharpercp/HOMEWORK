def sum_to(n)
    return nil if n < 1
    return n if n == 1
    n + sum_to(n - 1)
end

p sum_to(5)  # => returns 15
p sum_to(1)  # => returns 1
p sum_to(9)  # => returns 45
p sum_to(-8)  # => returns nil

def add_numbers(num_array)
    sum = 0
    return nil if num_array.length < 1
    return num_array[0] if num_array.length == 1
    sum += num_array[-1] + add_numbers(num_array[0...-1])
end

#p add_numbers([1,2,3,4]) # => returns 10
#p add_numbers([3]) # => returns 3
#p add_numbers([-80,34,7]) # => returns -39
#p add_numbers([]) # => returns nil

def gamma_fnc(n)
    product = 1
    return nil if n < 1
    return product if n == 1
    product *= (n - 1) * gamma_fnc(n - 1)
end

p gamma_fnc(0)  # => returns nil
p gamma_fnc(1)  # => returns 1
p gamma_fnc(4)  # => returns 6
p gamma_fnc(8)  # => returns 5040

def ice_cream_shop(flavors, favorite)
    return false if flavors.length < 1
    if flavors[-1] == favorite
        return true
    else
        ice_cream_shop(flavors[0...-1], favorite)
    end
end


p ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
p ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
p  ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
p  ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
p  ice_cream_shop([], 'honey lavender')  # => returns false
    
def reverse(str)
    return str if str.length <= 1
    reverse(str[1..-1]) + str[0]
end

p reverse("house") # => "esuoh"
p reverse("dog") # => "god"
p reverse("atom") # => "mota"
p reverse("q") # => "q"
p reverse("id") # => "di"
p reverse("") # => ""
