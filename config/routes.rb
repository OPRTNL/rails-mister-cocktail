Rails.application.routes.draw do
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
  # resources :doses
  resources :ingredients, except: :destroy
  resources :doses
end
