Rails.application.routes.draw do
  resources :osobas
  root to: redirect('/ideas')
  resources :ideas
  get 'pages/info'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
