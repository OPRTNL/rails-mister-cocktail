Rails.application.routes.draw do
  get 'dose/pages'
  get 'dose/index'
  get 'dose/new'
  get 'dose/show'
  # resources :ingredients  For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails do
    resources :doses, only: [:new, :update, :create]
  end
  resources :ingredients
end
