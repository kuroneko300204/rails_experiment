Rails.application.routes.draw do
  # root to: 'user#new'
  # post 'user/create'
  # root to: 'company#new'
  # post 'company/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create, :show] do
    collection do
      post :confirm
    end
  end
end
