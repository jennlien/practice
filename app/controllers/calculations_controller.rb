class CalculationsController < ApplicationController
  def home

  end

  def sqrt_root
    @the_number = params["number"].to_f #changing it to .to_f 
    @answer = Math.sqrt(@the_number) 
  end

  def sqrt
  	@the_number = params["number"].to_f #changing it to .to_f
    @answer = (@the_number*@the_number)
  end

  def pmt
  	@the_interest_rate = params["interest_rate"].to_f
  	@the_interest_rate = @the_interest_rate*0.01/12
  	@the_number_of_payments = params["number_of_payments"].to_f
  	@the_present_value = params["present_value"].to_f
  	@payment = (@the_interest_rate*@the_present_value)/(1-((1+@the_interest_rate)**(-1*@the_number_of_payments)))
  end

end
