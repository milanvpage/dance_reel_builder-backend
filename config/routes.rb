Rails.application.routes.draw do
  resources :theaters
  resources :concerts
  resources :commercials
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
