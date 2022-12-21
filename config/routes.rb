Rails.application.routes.draw do
  
  
  resources :worldcups
  namespace :api do
    post "sign_up", to: "royxat#create"
    delete "destroy", to: "royxat#destroy"
    post "sign_in", to: "kirish#create"
    delete "sign_out", to: "kirish#destroy"
  end
end
