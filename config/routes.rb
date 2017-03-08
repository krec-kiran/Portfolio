Rails.application.routes.draw do
  devise_for :users, path:'', path_names: {sign_in:'login', sign_up: 'register', sign_out: 'logout'}
  resources :biodata, except: [:show]

  get 'angular-items', to:'biodata#angular'

  get 'biodata/:id', to:'biodata#show'


  get 'about', to:'pages#home'
  get 'contact', to:'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
     end
  end

  root to: 'pages#home'

end
