Blog::Application.routes.draw do
  devise_for :users
  resources :posts
  resource :profile, only: [:show, :edit, :update]

  root 'posts#index'
end
