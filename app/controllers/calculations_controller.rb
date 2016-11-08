class CalculationsController < ApplicationController

  def instructions
    render("instructions.html.erb")
  end

  def square
    @number = params[:number]
    @squared = @number.to_i*@number.to_i

    render("square.html.erb")
  end

  def square_root
    @number = params[:number]
    @number_f = @number.to_f
    @square_root = Math.sqrt(@number_f)

    render("square_root.html.erb")
  end

  def random
    @minimum = params[:MIN]
    @maximum = params[:MAX]
    @random = Random.new.rand(@minimum.to_i..@maximum.to_i)

    render("random.html.erb")
  end

  def payment
    @basispts = params[:interest_rate]
    @annual_rate = @basispts.to_f/100
    @rate = @annual_rate.to_f/12
    @years = params[:number_of_years]
    @months = @years.to_f*12
    @principal = params[:principal_value]

    @payment = @principal.to_f*(@rate*((1 + @rate)**@months))/(((1 + @rate)**@months)-1)

    render("payment.html.erb")
  end

end
