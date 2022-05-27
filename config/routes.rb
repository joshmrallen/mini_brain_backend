Rails.application.routes.draw do
  get 'tracks/focus/:id' => 'tracks#focus'
  get 'tracks/relax/:id' => 'tracks#relax'
  get 'tracks/sleep/:id' => 'tracks#sleep'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
