Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
# Defines the root path route ("/")
 root 'inventories#index'
  resources :inventories, only: %i[show index create] do
    resources :foods, only: %i[new create]
  end

  resources :recipes do
    # member do
    #   patch :toggle_visibility
    # end
  end
  get 'public_recipes', to: 'recipes#public_index', as: :public_recipes
end
