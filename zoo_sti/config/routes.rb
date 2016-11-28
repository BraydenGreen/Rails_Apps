Rails.application.routes.draw do

 resources :zoos do
  resources :animals
  resources :bears, controller: 'animals', type: 'Lion'
  resources :lions, controller: 'animals', type: 'Bear'
  resources :elephants, controller: 'animals', type: 'Elephant'
 end

end
