Rails.application.routes.draw do
  resources :biodata

  get 'about', to:'pages#home'
  get 'contact', to:'pages#contact'

  resources :blogs

  root to: 'pages#home'

end
