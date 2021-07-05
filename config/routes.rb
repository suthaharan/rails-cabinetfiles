Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  get 'comments/index'
  get 'comments/show'
  get 'comments/new'
  get 'comments/destroy'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/destroy'
  get 'posts/show'
  get 'posts/new'
  get 'posts/destroy'
  get 'posts/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  

  resources :docs
  authenticated :user do
    root "docs#index", as: "authenticated_root"
  end
  root "welcome#index"
end
