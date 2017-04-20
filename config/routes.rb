Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get("/flexible/square/:num", {:controller => "calculations", :action => "flex_square_5"})
    # get("/flexible/payment/:num/:another/:third", {:controller => "calculations", :action => "flex_payment_5"})
  get("/flexible/square_root/:num", {:controller => "calculations", :action => "flex_square_root_5"})
  get("/square/new", {:controller => "calculations", :action => "square_form"})
end
