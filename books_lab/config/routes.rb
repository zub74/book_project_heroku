Rails.application.routes.draw do

  root 'books#HomePage'

  get 'books/HomePage'
  get 'books/AddBook'
  #get 'books/UpdateBook'
  #get 'books/Details'
  #get 'books/Delete'
  get 'demo/index'
  get 'demo/hello'
  resources :books do
    member do
      get :Details
      get :AddBook
      get :UpdateBook
      get :Delete
      get :update
    end
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
