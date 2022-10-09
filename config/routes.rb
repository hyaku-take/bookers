Rails.application.routes.draw do
  root :to => 'homes#top'
  resources :books
   get 'book/:id' => 'book#show', as: 'bbbbbook'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
