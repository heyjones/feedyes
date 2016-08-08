Rails.application.routes.draw do

  get '/feed/:id', to: 'feeds#show'

end
