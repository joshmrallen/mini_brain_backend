Rails.application.routes.draw do
  get 'tracks/focus/:id' => 'tracks#focus'
  get 'tracks/relax' => 'tracks#relax'
  get 'tracks/sleep' => 'tracks#sleep'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
