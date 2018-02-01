# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum=0
  
  if arr.length > 0 then
  	arr.each do |element|
 		sum += element
  	end
  else 
	  sum = 0
  end
  return sum
end

def max_2_sum arr
	sum = 0
	elem_a=0
	elem_b=0
	if arr.length > 1 then
		elem_a = arr[0]
		elem_b = arr[1]
		arr.drop(2).each do |element|
			if element >= elem_a then
				elem_b = elem_a
				elem_a = element
			end
		sum = elem_b + elem_a
		end
	elsif arr.length == 1 then
		sum = arr[0]
	else
		sum = 0
	end
	return sum
end

def sum_to_n? arr, n
       sum = false
       index0 = 0
       index1 = 0
       if arr.length > 1 then
	       while index0 < arr.length
		       while index1 < arr.length
			       if (arr[index0]+arr[index1])==n && (index0!=index1) then
				       sum = true
				       return sum
			       end
			       index1+=1
		       end
		       index1=0
		       index0+=1
	       end
       end
       return sum
end

# Part 2

def hello(name)
	greeting = "Hello, " + name
	return greeting
end

def starts_with_consonant? s
	consonant = false
	consonant_arr = ["a","e","i","o","u"]
	if s.length > 0 and s[0].match(/^[[:alpha:]]$/) then
		consonant_arr.each do |element|
			if s[0].downcase == element then
				return consonant
			end
		end
		consonant = true
	end
	return consonant
	end

def binary_multiple_of_4? s
      mult = 0
      div_by_four = false
      index = 0
      s.reverse!
	if s.length > 2 then
		while index < s.length 
			if s[index] !="0" && s[index] != "1" then
				div_by_four = false
				return div_by_four
			else
				mult += (2 ** index) * s[index].to_i
			end
			index+=1
		end
		if (mult%4) == 0 then
			div_by_four = true
		end
	elsif s.length == 1
		if s[0] == "0"
			div_by_four = true
		end
	end
	return div_by_four


end

# Part 3

class BookInStock
	
end
