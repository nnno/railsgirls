Rails.application.routes.draw do
  devise_for :users
  resources :comments
  resources :ideas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: redirect('/ideas')
end
