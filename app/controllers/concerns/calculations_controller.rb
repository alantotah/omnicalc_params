class CalculationsController < ApplicationController

  def flexible_square_5
    @user_num = params["number"].to_f
    render("calculations/flexible_square_5.html.erb")
  end

  def flexible_square_root
    @user_num = params["number"].to_f
    render("calculations/flexible_square_root.html.erb")
  end

  def flexible_payment
    @user_num = params["number"].to_f
    @user_num1 = params["number1"].to_i
    @user_num2 = params["number2"].to_f
    @monthly_payment = (((((@user_num/100)/100)/12) * @user_num2) / (1 - (1 + (((@user_num/100)/100)/12)) ** ( -(@user_num1 * 12))))
    render("calculations/flexible_payment.html.erb")
  end

  def flexible_random
    @user_num = params["number"].to_f
    @user_num1 = params["number1"].to_f
    @random_number = rand(@user_num...@user_num1).round(2)
    render("calculations/flexible_random.html.erb")
  end

  def square_form
    render("calculations/square_form.html.erb")
  end

  def square
    @user_num = params[:user_num].to_f
    render("calculations/square.html.erb")
  end
  def square_root_form
    render("calculations/squareroot_form.html.erb")
  end

  def square_root
    @user_num = params[:user_num].to_f
    render("calculations/square_root.html.erb")
  end

  def payment_form
    render("calculations/payment_form.html.erb")
  end

  def payment
    @user_num = params[:user_num].to_f
    @user_num1 = params[:user_num1].to_f
    @user_num2 = params[:user_num2].to_f
    @monthly_payment = ((((@user_num/100)/12) * @user_num2) / (1 - (1 + ((@user_num/100)/12)) ** ( -(@user_num1 * 12))))
    render("calculations/payment.html.erb")
  end

  def random_form
    render("calculations/random_form.html.erb")
  end

  def random
    @user_num = params[:user_num].to_f
    @user_num1 = params[:user_num1].to_f
    @random_number = rand(@user_num...@user_num1).round(2)
    render("calculations/random.html.erb")
  end

end
