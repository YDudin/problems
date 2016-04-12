Rails.application.routes.draw do
  root to: 'problems#index'

  resources :users, only: %i(index new create show destroy)
  resources :tasks, only: %i(new create show)
  resources :problems, only: %i(index show) do
    resources :solutions, only: %i(index new show create)
  end
end
