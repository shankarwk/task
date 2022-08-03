Rails.application.routes.draw do

  root 'home#index'
  get "signup" , to: "home#signup" , as: :signup
  post "create" , to: "home#create" , as: :create
  get "log" , to: "home#log" , as: :log
  post "login" , to: "home#login" , as: :login
  get "delete_user" , to: "home#delete_user" , as: :delete
  get "candidate", to: "home#candidate" , as: :candidate
  get "candidate_details/:id", to: "home#show" , as: :show
  post "updatedata/new/:id/", to: "home#updatedata" , as: :update
  get 'ondrive/detail/:id' , to: "ondrive#detail" , as: :detail
  get "ondrive/track/:id", to: "ondrive#track", as: :track
  get "ondrive/all_detail/:id", to: "ondrive#all_detail" , as: :all
  post "ondrive/info/:id", to: "ondrive#info" , as: :info
  get "home/admin", to: "home#admin" , as: :admin
  get "home/candidate_info/:date", to: "home#candidate_info" , as: :candidate_info

end
