Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })

  get('/square/:number', { :controller => 'calculations', :action => 'square'})

  get('/square_root/:number', { :controller => 'calculations', :action => 'square_root'})

  get('/random/:MIN/:MAX', { :controller => 'calculations', :action => 'random'})

  get('/payment/:interest_rate/:number_of_years/:principal_value', { :controller => 'calculations', :action => 'payment'})

end
