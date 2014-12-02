Rails.application.routes.draw do
  root 'rooms#index'

  resources :rooms do
    resources :messages
  end

  get '/users' => 'users#index'
  post '/users/create'
  patch '/users/update'
  put '/users/update'

end


#            Prefix Verb   URI Pattern                                 Controller#Action
#              root GET    /                                           rooms#index
#     room_messages GET    /rooms/:room_id/messages(.:format)          messages#index
#                   POST   /rooms/:room_id/messages(.:format)          messages#create
#  new_room_message GET    /rooms/:room_id/messages/new(.:format)      messages#new
# edit_room_message GET    /rooms/:room_id/messages/:id/edit(.:format) messages#edit
#      room_message GET    /rooms/:room_id/messages/:id(.:format)      messages#show
#                   PATCH  /rooms/:room_id/messages/:id(.:format)      messages#update
#                   PUT    /rooms/:room_id/messages/:id(.:format)      messages#update
#                   DELETE /rooms/:room_id/messages/:id(.:format)      messages#destroy
#             rooms GET    /rooms(.:format)                            rooms#index
#                   POST   /rooms(.:format)                            rooms#create
#          new_room GET    /rooms/new(.:format)                        rooms#new
#         edit_room GET    /rooms/:id/edit(.:format)                   rooms#edit
#              room GET    /rooms/:id(.:format)                        rooms#show
#                   PATCH  /rooms/:id(.:format)                        rooms#update
#                   PUT    /rooms/:id(.:format)                        rooms#update
#                   DELETE /rooms/:id(.:format)                        rooms#destroy
#             users GET    /users(.:format)                            users#index
#      users_create POST   /users/create(.:format)                     users#create
#      users_update PATCH  /users/update(.:format)                     users#update
#                   PUT    /users/update(.:format)                     users#update