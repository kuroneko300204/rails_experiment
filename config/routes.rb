Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show] do
    collection do
      post :next
      post :confirm
    end
  end

  root "users#new"
end
