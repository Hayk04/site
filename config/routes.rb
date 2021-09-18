Rails.application.routes.draw do
  devise_for :users
  get 'posts', to: "posts#index", as: 'posts'
  get 'posts/:id', to: "posts#show", as: 'post'
  resources "users", only: [:show, :edit, :update]
  root "home#index"
  namespace :admin do 
    get '/', to: 'home#index'
    resources :posts
    resources "users"
  end  
end

