Rails.application.routes.draw do
  root 'rooms#index'

  get 'rooms/create'

  get 'rooms/update'

  get 'rooms/destroy'

  get 'users/create'

  get 'users/update'

  get 'users/destroy'

end
