Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root to: "articles#index"
  resources :articles do
    resources :comments, only: [:create, :destroy]
    collection do
      get 'search'
    end
  end
  resources :users, only: [:show, :edit, :update]
  post   '/like/:id' => 'likes#create',   as: 'create_like'
  delete '/like/:id' => 'likes#destroy',  as: 'destroy_like'
end