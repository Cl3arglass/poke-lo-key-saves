Rails.application.routes.draw do
  scope '/api' do
    resources :pokes
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
