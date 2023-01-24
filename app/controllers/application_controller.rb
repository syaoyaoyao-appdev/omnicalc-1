class ApplicationController < ActionController::Base
  def blank_square_forms
    render({ :template => "calculation_templates/square_form.html.erb" })
  end

  def results_square_forms
    @num = params.fetch("number").to_f

    @square_of_num = @num ** 2
    render({ :template => "calculation_templates/results_form.html.erb" })
  end

  def blank_random_forms
    render({ :template => "calculation_templates/blank_random_forms.html.erb" })
  end

  def results_random_forms
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    @result = rand(@min..@max)

    render({ :template => "calculation_templates/results_random_form.html.erb" })
  end

  def blank_square_root_forms
    render({ :template => "calculation_templates/blank_square_root_form.html.erb" })
  end

  def results_square_root_forms
    @num = params.fetch("number").to_f

    @square_of_num = @num ** 0.5
    render({ :template => "calculation_templates/results_square_root_form.html.erb" })
  end

  def blank_payment_forms
    render({ :template => "calculation_templates/blank_payment_forms.html.erb" })
  end

  def results_payment_forms
    @apr = params.fetch("user_apr").to_f
    @principal = params.fetch("user_pv").to_f
    @year = params.fetch("user_years").to_f

    month = @year * 12
    month_apr = @apr / 100 / 12
    @payment = @principal * (month_apr * (1 + month_apr) ** month) / ((1 + month_apr) ** month - 1)

    @apr = @apr.to_s(:percentage, { :precision => 4 })
    @principal = @principal.to_s(:currency)
    @payment = @payment.to_s(:currency)

    render({ :template => "calculation_templates/results_payment_form.html.erb" })
  end
end
