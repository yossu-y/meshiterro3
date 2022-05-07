Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#top'
  get "homes/top" => "homes#top",as: "about"
  
  resources :post_images,only:[:index, :new, :show, :create]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
