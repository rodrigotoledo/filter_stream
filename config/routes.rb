Rails.application.routes.draw do
  root 'file_stream#index'
  post 'file_stream', controller: :file_stream, action: :create, as: :filter_and_stream
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Almost every application defines a route for the root path ("/") at the top of this file.
  # root "articles#index"
end
