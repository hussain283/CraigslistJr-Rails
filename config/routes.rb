CraigslistJr::Application.routes.draw do
  authenticated :user do
    root :to => 'categories#index'
  end
  root :to => "categories#index"
  devise_for :users
  resources :users
  resources :categories do
    resources :posts
  end
end
