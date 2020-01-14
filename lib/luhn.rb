module Luhn
  def self.is_valid?(number)
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
  end
end