Rails.application.routes.draw do
  namespace :api do
    get :todolists, controller: :todo_lists, action: :index
  end
end
