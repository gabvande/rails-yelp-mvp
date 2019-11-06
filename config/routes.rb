Rails.application.routes.draw do
  get    'restaurants',          to: 'restaurants#index'

  get    'restaurants/new',      to: 'restaurants#new'
  post   'restaurants',          to: 'restaurants#create'

  # NB: The `show` route needs to be *after* `new` route.
  get    'restaurants/:id',      to: 'restaurants#show', as: 'restaurant'

  get    'restaurants/:id/edit', to: 'restaurants#edit'
  patch  'restaurants/:id',      to: 'restaurants#update'

  delete 'restaurants/:id',      to: 'restaurants#destroy'

  post 'restaurants/:restaurant_id/reviews', to: 'reviews#create'
  get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new'
end
