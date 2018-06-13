Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get '/home', to: 'main#home', as: 'home'

  get '/about', to: 'main#about', as: 'about'

  root 'main#home'
end
