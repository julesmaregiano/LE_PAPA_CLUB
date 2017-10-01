Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :chat_rooms, only: [ :show, :index] do
    resources :messages, only: [:create] do
      resources :answers, only: [:show, :create, :new, :delete]
    end
  end

  resources :articles, only: [ :index, :show] do
    resources :comments, only: [:show, :create, :new, :delete]
  end

  resources :products, only: [ :index, :show]

end
