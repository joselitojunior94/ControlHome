Rails.application.routes.draw do
  	
  devise_for :users
  root "boletos#index"
  

  resources :apartamentos
  resources :boletos
  resources :vagas
  resources :encomendas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
