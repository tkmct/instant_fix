Rails.application.routes.draw do
  devise_for :users
  root to: "top#index"
  get '/search' => 'top#search'
  resources :error_messages, only: [:new, :show, :create, :edit, :update] do
    resources :solutions, only: [:new, :create]
  end

  post "solutions/:id/good", to: "solutions#good"
end
 