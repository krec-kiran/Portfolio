Rails.application.routes.draw do
  devise_for :users, path:'', path_names: {sign_in:'login', sign_up: 'register', sign_out: 'logout'}
  resources :biodata, except: [:show]

  get 'angular-items', to:'biodata#angular'

  get 'biodata/:id', to:'biodata#show'


  get 'about-me', to: 'pages#about'
  # get 'contact', to: 'pages#contact'

  # get 'contact', to: 'messages#new', as: 'contact'
  # post 'contact', to: 'messages#create'

   match '/contacts',     to: 'contacts#new',             via: 'get'
   resources "contacts", only: [:new, :create]

  resources :blogs do
    member do
      get :toggle_status
     end
  end

  root to: 'pages#home'

end
