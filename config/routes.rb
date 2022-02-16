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
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
