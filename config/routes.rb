Rails.application.routes.draw do
  devise_for :users

  resources :users do
  end

  resources :recipes do
  end

  resources :foods do
  end

  # Defines the root path route ("/") to the public_recipes controller's index action
  root "users#index"
  get '/foods', to: 'foods#index'
  get '/recipes', to: 'recipes#index'
  get '/public_recipes', to: 'public_recipes#index'
  
  delete '/recipes/:id', to: 'recipes#destroy', as: 'destroy_recipe'
  delete '/foods/:id', to: 'foods#destroy', as: 'destroy_food'
end
