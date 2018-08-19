Rails.application.routes.draw do
  devise_for :users, controllers:{ sessions: 'users/sessions', registrations: 'users/registrations', passwords:'users/passwords'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :publications

  get '/home', to: 'main#home', as: 'home'

  get '/about', to: 'main#about', as: 'about'

  get '/servicios', to: 'main#services', as: 'services'

  get '/contacto', to: 'main#contact', as: 'contact'

  root 'main#home'


end
