Rails.application.routes.draw do
  get("/square/new", { :controller => "application", :action => "blank_square_forms" })

  get("/square/results", { :controller => "application", :action => "results_square_forms" })

  get("/random/new", { :controller => "application", :action => "blank_random_forms" })

  get("/random/results", { :controller => "application", :action => "results_random_forms" })

  get("/square_root/new", { :controller => "application", :action => "blank_square_root_forms" })

  get("/square_root/results", { :controller => "application", :action => "results_square_root_forms" })

  get("/payment/new", { :controller => "application", :action => "blank_payment_forms" })

  get("/payment/results", { :controller => "application", :action => "results_payment_forms" })
end
