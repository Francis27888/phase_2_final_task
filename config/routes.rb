Rails.application.routes.draw do
  resources :tweeterclones do
    collection do
      post :confirm
    end
  end
  root 'tweeterclones#index'
  end
