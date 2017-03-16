Rails.application.routes.draw do
  devise_for :users, path:'', path_names: {sign_in:'login', sign_up: 'register', sign_out: 'logout'}
  resources :biodata, except: [:show]

  get 'angular-items', to:'biodata#angular'

  get 'biodata/:id', to:'biodata#show'


  get 'about-me', to: 'pages#about'

  get 'resume', to: 'pages#resume'

  # get 'contact', to: 'pages#contact'

  # get 'contact', to: 'messages#new', as: 'contact'
  # post 'contact', to: 'messages#create'

   get 'contacts',     to: 'contacts#new'
   resources "contacts", only: [:new, :create]

  resources :blogs do
    member do
      get :toggle_status
     end
  end

  root to: 'pages#home'

end
