Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  root to: 'articles#index'
  resources :articles do
    resources :comments
  end
end
