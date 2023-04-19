Rails.application.routes.draw do
  namespace :api do
    #get :todolists, controller: :todo_lists, action: :index
    resources :todo_lists do 
      resources :todo_items, only: [:index, :create]
    end
  end
end
