Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get("/flexible/square/:num", {:controller => "calculations", :action => "flex_square_5"})
  get("/flexible/payment/:int/:year/:amount", {:controller => "calculations", :action => "flex_payment_5"})
  get("/flexible/random/:num/:sec", {:controller => "calculations", :action => "flex_random_5"})
  get("/flexible/square_root/:num", {:controller => "calculations", :action => "flex_square_root_5"})
  get("/square/new", {:controller => "calculations", :action => "square_form"})
  get("/square/results", {:controller => "calculations", :action => "square"})
end
