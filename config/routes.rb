Rails.application.routes.draw do
  root "users#index"
  get "users/:id",to: "users#show",as: "show"
  get "users/new",to: "users#new",as: "new"
  post "users",to: "users#creat",as: "create"
  get "users/:id/edit",to: "users#edit",as: "edit"
  patch "users/:id",to: "users#update",as: "update"
  delete "users/:id",to: "users#destory",as: "destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
