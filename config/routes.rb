Rails.application.routes.draw do
  
  scope '/api' do
  	post '/login', to: 'sessions#create'
  	resources :users
    resources :pokes
    get '/get_current_user', to: 'sessions#get_current_user'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
