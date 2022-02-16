Rails.application.routes.draw do
  resources :restaurants do
    # add a route based on the collection of restaurants
    collection do
      get :top
    end

    # add a route based on a specific restaurant (by its id)
    member do
      get :chef
    end

    # nested: add routes based on a specific restaurant (by its id)
    resources :reviews, only: [:new, :create]
  end
  # Don't nest! Because it already has its own id
  resources :reviews, only: [:destroy]
end
