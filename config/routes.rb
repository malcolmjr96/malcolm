Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root to: "main#index"
  # Defines the root path route ("/")
  # root "articles#index"
# config/routes.rb
 # get 'contacts/new', to: 'contacts#new'
  post 'contacts', to: 'contacts#create'

end
