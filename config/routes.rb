Rails.application.routes.draw do

  #get 'users/show'
  #get 'users/edit'
#get "/post_images" => 'post_images#index'
#get '/post_images/:id' => 'post_images#show', as: 'show'
delete '/post_images/:id' => 'post_images#destroy', as: 'delete'
#get '/users/:id' => 'users#show', as: 'user_show'

  devise_for :users

   resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resources :post_comments, only: [:create,:destroy]
  end


  resources :users, only: [:show, :edit, :update]
  get "/homes/about" => "homes/about", as: "about"
  root to: "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
