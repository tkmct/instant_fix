Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }
  root to: "top#index"
  get '/search' => 'top#search'
  resources :error_messages, only: [:new, :show, :create, :edit, :update] do
    resources :solutions, only: [:new, :create]
  end

  post "error_messages/:id/clip", to: "error_messages#clip"
  post "solutions/:id/good", to: "solutions#good"
end
 
