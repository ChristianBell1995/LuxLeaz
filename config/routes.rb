Rails.application.routes.draw do
  # get 'reviews/new'
  # get 'reviews/create'
  # get 'reviews/show'
  # get 'reviews/destroy'
  # get 'bookings/new'
  # get 'bookings/create'
  # get 'bookings/show'
  # get 'bookings/destroy'
  # get 'items/new'
  # get 'items/create'
  # get 'items/show'
  # get 'items/edit'
  # get 'items/update'
  # get 'items/destroy'
  # get 'users/index'
  # get 'users/shownew'
  # get 'users/create'
  # get 'users/edit'
  # get 'users/update'
  # get 'users/destroy'
  devise_for :users
  root to: 'pages#home'
  resources :users do
    resources :items, only: [:new, :create, :show, :edit, :update, :destroy] do
      resources :bookings, only: [:new, :create, :show, :destroy] do
        resources :reviews, only: [:new, :create, :show, :destroy]
      end
    end
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

