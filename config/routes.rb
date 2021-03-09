Rails.application.routes.draw do
  root to: 'pages#home'
  resources :products
  resources :oils
  get '/pages/products', to: 'pages#products', as: 'prods'
  get '/pages/construction', to: 'pages#construction', as: 'cons'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
