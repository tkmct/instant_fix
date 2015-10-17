Rails.application.routes.draw do
  devise_for :users
  root to: "top#index"
  get '/search' => 'top#search'
  resources :error_messages, only: [:new, :show, :create] do
    resources :solutions, only: [:new, :create] do
    end
  end

  post "solutions/:id/good", to: "solutions#good"
end
 