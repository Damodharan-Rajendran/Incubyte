# app/services/number_checker_service.rb
class NumberCheckerService
  def self.sum_positive_numbers(number_string)
    # Use a regular expression to split the string by various delimiters
    numbers = number_string.split(/[\s,;:|]+/).map(&:to_i)
    negative_numbers = numbers.select { |number| number < 0 }

    if negative_numbers.any?
      raise NegativeNumberError.new(negative_numbers)
    else
      numbers.sum
    end
  end
end
