
digits = number.to_s.split('').map { |str| str.to_i}
digits = digits.reverse.map.with_index { |digit, index| index % 2 == 1? digit * 2 : digit }

digits.each_with_index do |digit, index|
  if digit >= 10
    digits[index] = digit - 9
  end
end

sum = digits.reduce {|digit1, digit2| digit1 + digit2}

if sum % 10 == 0 
  return true
else
  return false
end

# code above works!!! 
# code below is old luhn code


module Luhn
  def self.is_valid?(number)
    #Step 1
    digits = []
    number.to_s.each do |char| 
      digits += char.to_i
    end
    # digits = number.to_s.split('').map { |str| str.to_i } 
    # number to indv digits 
    #Step 2
    digits.reverse.each_with_index do |digit, index|
      if index % 2 == 1
        digits[index] = 2 * digit # digits[index] *= 2
      end
    end
    # digits = digits.reverse.map.with_index 
    #   {|digit, index| digit * 2 if index % 2 == 1 }
    #Step 3
    digits.each_with_index do |digit, index|
      if digit >= 10
        digits[index] = digit - 9 
      end
    end
    # def bound_by_base_10 digit
    #   return digit - 9 if digit >= 10
    # end
    # digits = digits.map(bound_by_base_10)
    #Step 4 
    sum = 0
    digits.each do |digit| 
      sum += digits
    end
    # sum = digits.reduce {|digit1, digit2| digit1 + digit2}
    # Step 5
    if sum % 10 == 0 # is div by 10 => valid
      return true
    else 
      return false
    end
    # return sum % 10 == 0
  end
end