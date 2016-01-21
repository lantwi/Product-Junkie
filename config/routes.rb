Rails.application.routes.draw do
  get 'home/index'

root "home#index"
 resources :items do
 resources :comments
end
  resources :tags

end
