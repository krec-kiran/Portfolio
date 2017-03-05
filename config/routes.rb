Rails.application.routes.draw do
  resources :biodata, except: [:show]
  get 'biodata/:id', to:'biodata#show'


  get 'about', to:'pages#home'
  get 'contact', to:'pages#contact'

  resources :blogs

  root to: 'pages#home'

end
