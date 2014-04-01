Blog::Application.routes.draw do
  devise_for :users
  resources :posts
  resources :profiles, only: [:show, :edit, :update]

  root 'posts#index'
end
