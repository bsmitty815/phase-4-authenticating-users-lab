Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # anytime you arent using one of the restful routes you need to make custom routes
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  
  get '/me', to: 'users#show'

end


# Prefix  Verb    URI Pattern           Controller#Action
#  birds  GET     /birds(.:format)      birds#index
#         POST    /birds(.:format)      birds#create
#   bird  GET     /birds/:id(.:format)  birds#show
#         PATCH   /birds/:id(.:format)  birds#update
#         PUT     /birds/:id(.:format)  birds#update
#         DELETE  /birds/:id(.:format)  birds#destroy 