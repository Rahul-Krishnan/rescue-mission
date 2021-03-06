Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "questions#index"

  resources :questions do
    resources :answers, only: [:new, :create]
  end

  resources :answers, only: [:index, :update, :edit, :destroy]
end
