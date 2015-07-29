class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square_root
    @user_number = params["number"].to_f
    @user_sqrt = Math.sqrt(@user_number)
    render("square_root.html.erb")
  end

  def random
    @hi = params["hi"].to_i
    @low = params["low"].to_i
    @random = rand(@hi-@low) + @low
    render("random.html.erb")
  end

  def payment
    @rate = params["rate"].to_f / 10
    @nper = params["nper"].to_i
    @pv   = params["pv"].to_i
    @pmt   = @pv * (@rate/1200*(1+@rate/1200)**(@nper*12)) / ((1+@rate/1200)**(@nper*12) - 1)
    render("payment.html.erb")
  end


end
