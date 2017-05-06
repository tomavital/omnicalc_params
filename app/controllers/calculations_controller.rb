class CalculationsController <ApplicationController
  def flex_square
    @user_number = params["num"].to_f
    @square = @user_number **2
    render("calculations/flex_square.html.erb")
  end
  def flex_square_root
    @user_number = params["num"].to_f
    @square = (@user_number **0.5).round(2)
    render("calculations/flex_square_root.html.erb")
  end
  def flex_payment
    @interest = params["int"].to_f/100
    @amount = params["amount"].to_i
    @year = params["year"].to_i
    apr = params["int"].to_f/100/100/12
    ye = params["year"].to_f*12
    am = params["amount"].to_f
    a=(1+apr)**(-ye)
    b=apr*am
    c= b/(1-a)
    @square = c.round(2)
    render("calculations/flex_payment.html.erb")
  end
  def flex_random
    @user_min = params["num"].to_i
    @user_max = params["sec"].to_i
    @square = rand(@user_max-@user_min)+@user_min
    render("calculations/flex_random.html.erb")
  end

  def square_form
    render("calculations/square_form.html.erb")
  end

  def square
    @user_number = params["user_number"].to_f
    @square = @user_number**2
    render ("calculations/square_results.html.erb")
  end

  def square_root_form
    render ("calculations/square_root_form.html.erb")
  end

  def square_root
    @user_number = params["user_number"].to_f
    @square_root = (@user_number**0.5).round(3)
    render ("calculations/square_root_results.html.erb")
  end

  def payment_form
    render ("calculations/payment_form.html.erb")
  end

  def payment
    @interest = params["int"].to_f
    @amount = params["amount"].to_i
    @year = params["year"].to_i
    apr = params["int"].to_f/100/12
    ye = params["year"].to_f*12
    am = params["amount"].to_f
    a=(1+apr)**(-ye)
    b=apr*am
    c= b/(1-a)
    @square = c.round(2)

    render ("calculations/payment_results.html.erb")
  end

  def random_form
    render ("calculations/random_form.html.erb")
  end

  def random
    @min= params["min"].to_f
    @max = params["max"].to_f

    @square = (rand()*(@max-@min)+@min).round(2)

    render ("calculations/random_results.html.erb")
  end


end
