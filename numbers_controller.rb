# app/controllers/numbers_controller.rb
class NumbersController < ApplicationController
  def sum
    begin
      result = NumberCheckerService.sum_positive_numbers(params[:numbers])
      render json: { sum: result }
    rescue NegativeNumberError => e
      render json: { error: e.message }, status: :unprocessable_entity
    end
  end
end
