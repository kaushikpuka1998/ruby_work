Rails.application.routes.draw do


  
  get 'newdatapi/create'
  get 'apicall/index'
  get 'home/about'
  delete 'hello' ,to: "apicall#hello"
  post 'apicreate' ,to: "newdatapi#create"
  root to:  'home#index'
  devise_for :users
  resources :details
  #get 'home/index'

  
  

 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
