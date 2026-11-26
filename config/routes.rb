Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "lists#index"

  get "up" => "rails/health#show", as: :rails_health_check

 resources :lists, only: [ :create, :index, :show, :new ] do
    resources :bookmarks, only: [ :create, :new ]
 end

 resources :bookmarks, only: :destroy
end
