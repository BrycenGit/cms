Rails.application.routes.draw do
  get 'comments/new'
  get 'comments/show'
  get 'comments/edit'
  get 'bios/new'
  get 'bios/show'
  get 'bios/edit'
  get 'skills/new'
  get 'skills/show'
  get 'skills/edit'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "users#index"
  resources :users do
    resources :projects
  end
  
end
