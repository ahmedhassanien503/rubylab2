Rails.application.routes.draw do
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: %i[new create]
  resource :session, only: %i[new create destroy]

resources :articles do
  resources :comments
end

root 'welcome#index'

end


