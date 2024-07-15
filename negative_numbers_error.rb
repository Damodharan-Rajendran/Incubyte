# app/exceptions/negative_number_error.rb
class NegativeNumberError < StandardError
  attr_reader :negative_numbers

  def initialize(negative_numbers)
    @negative_numbers = negative_numbers
    super("Negative numbers not allowed: #{negative_numbers.join(', ')}")
  end
end
