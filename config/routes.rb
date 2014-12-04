Rails.application.routes.draw do
  root 'rooms#index'

  resources :rooms, :only => [:index, :create, :show, :update] do
    resources :messages, :only => [:create]
  end

  resources :users, :only => [:index, :create, :update]

  post '/login' => 'sessions#create'
end

#        Prefix Verb  URI Pattern                        Controller#Action
#          root GET   /                                  rooms#index
# room_messages POST  /rooms/:room_id/messages(.:format) messages#create
#         rooms GET   /rooms(.:format)                   rooms#index
#               POST  /rooms(.:format)                   rooms#create
#          room GET   /rooms/:id(.:format)               rooms#show
#               PATCH /rooms/:id(.:format)               rooms#update
#               PUT   /rooms/:id(.:format)               rooms#update
#         users GET   /users(.:format)                   users#index
#               POST  /users(.:format)                   users#create
#          user PATCH /users/:id(.:format)               users#update
#               PUT   /users/:id(.:format)               users#update