Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, :controllers => {
    :sessions      => "users/sessions",
    :registrations => "users/registrations",
    :passwords     => "users/passwords",
    :omniauth_callbacks => "users/omniauth_callbacks"
  }
  root to: "top#index"
  get '/search' => 'top#search'
  resources :users, only: [:show, :edit, :update]
  resources :error_messages, only: [:new, :show, :create, :edit, :update] do
    resources :solutions, only: [:new, :create]
  end

  post "solutions/:id/good", to: "solutions#good"
end

