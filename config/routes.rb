Practice::Application.routes.draw do
  get("/home",{:controller => "calculations",:action => "home" })
  get("/square_root/:number", {:controller => "calculations", :action => "sqrt_root" })
  get("/square/:number", {:controller => "calculations", :action => "sqrt" })
  get("/payment/:interest_rate/:number_of_payments/:present_value", { :controller => "calculations", :action => "pmt" })
end
