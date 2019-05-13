Rails.application.routes.draw do
  get 'root/top'
  resources :posts
  root 'root#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top' => 'root#top'
  get 'index' => 'posts#index'
  get  'posts/new' => 'posts#new'
  post 'posts' => 'posts#create'
  patch 'posts/:id' => 'posts#update', as: 'update_post'
end
