Rails.application.routes.draw do


  resource :post_images, only:[:new, :create, :index, :show]
  devise_for :users
  get "/homes/about" => "homes/about", as: "about"
  root to: "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
