Rails.application.routes.draw do
  get 'shopping_karts/index'
  resources :shopping_karts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
