Rails.application.routes.draw do
  devise_for :users
  resources :comments
  get '/ideas/me', to: 'ideas#filter_by_me'
  resources :ideas

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: redirect('/ideas')
end
