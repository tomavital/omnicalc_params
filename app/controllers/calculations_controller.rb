class CalculationsController <ApplicationController
  def flex_square_5
    @user_number = params["num"].to_f
    @square = @user_number **2
    render("calculations/flex_square_5.html.erb")
  end
  def flex_square_root_5
    @user_number = params["num"].to_f
    @square = @user_number **0.5
    render("calculations/flex_square_root_5.html.erb")
  end
  def flex_payment_5
    @interest = params["int"].to_f/100
    @amount = params["amount"].to_i
    @year = params["year"].to_i
    apr = params["int"].to_f/100/100/12
    ye = params["year"].to_f*12
    am = params["amount"].to_f
    a=(1+apr)**(-ye)
    b=apr*am
    c= b/(1-a)
    @square = c.round
    render("calculations/flex_payment_5.html.erb")
  end
  def square
    @user_number = params[:user_number].to_f
    @square = @user_number **2
    render("calculations/square.html.erb")
  end
  def square_form
    render("calculations/square_form.html.erb")
  end
end
