Rails.application.routes.draw do
  devise_for :users
  root 'categories#index'

  authenticated :user do
      resources :categories, only: [:index, :show, :new, :create, :edit, :update, :destroy]
      resources :expenses
      resources :splash
  end
    get 'users/sign_in' => 'devise/sessions#new'
    get '/categories', to: 'categories#index'
    get '/transactions', to: 'expenses#index'
end