Rails.application.routes.draw do
  
  scope '/api' do
  	post '/login', to: 'sessions#create'
  	delete '/logout', to: 'sessions#destroy'
  	resources :users
    resources :pokes
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
