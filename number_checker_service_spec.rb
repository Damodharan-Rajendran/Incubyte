# spec/services/number_checker_service_spec.rb
require 'rails_helper'

RSpec.describe NumberCheckerService do
  describe '.sum_positive_numbers' do
    context 'when given only positive numbers' do
      it 'returns the sum of positive numbers' do
        input_string = "1 2 3 4 5"
        expect(NumberCheckerService.sum_positive_numbers(input_string)).to eq(15)
      end
    end

    context 'when given a mix of positive and negative numbers' do
      it 'raises an exception with negative numbers listed' do
        input_string = "1 2 -3 4 -5"
        expect {
          NumberCheckerService.sum_positive_numbers(input_string)
        }.to raise_error(NegativeNumberError, "Negative numbers not allowed: -3, -5")
      end
    end
  end
end
