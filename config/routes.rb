Rails.application.routes.draw do
  root 'posts#new' 
  get 'index' => 'posts#index', as: 'index'
  post 'create' => 'posts#create', as: 'posts'
  get 'posts/:id' => 'posts#show', as: :show_post
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
