number = 4194560385008504

# digits = number.to_s.split('').map { |str| str.to_i }

# puts digits.inspect

digits = number.to_s.split('').map { |str| str.to_i } 
    
    digits.reverse.each_with_index do |digit, index|
      if index % 2 == 1
        digits[index] = 2 * digit 
      end
    end

    digits.each_with_index do |digit, index|
      if digit >= 10
        digits[index] = digit - 9 
      end
    end
   
    sum = digits.reduce {|digit1, digit2| digit1 + digit2}

    return sum % 10 == 0
