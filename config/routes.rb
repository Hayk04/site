Rails.application.routes.draw do
  devise_for :users
  get 'posts', to: "posts#index", as: 'posts'
  get 'posts/:id', to: "posts#show", as: 'post'
  root "home#index"
  namespace :admin do 
    get '/', to: 'home#index'
    resources :posts
  end  
end

