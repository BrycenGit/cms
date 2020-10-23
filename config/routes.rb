Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "users#show"
  resources :users do
    resources :projects
  end
  resources :users do
    resources :posts
  end
  resources :users do
    resources :skills
  end
  resources :users do
    resources :bios
  end

  resources :posts do
    resources :comments
  end
  
end
