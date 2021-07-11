Rails.application.routes.draw do
  resources :microposts
  resources :users

  get 'microposts',to:"microposts#index",as:"micropost_index"
  get 'microposts/:id',to:"microposts#show",as:"micropost_show"
  get 'microposts/new',to:"microposts#new",as:"micropost_new"
  get 'microposts/:id/edit',to:"microposts#edit",as:"micropost_edit"
  root "users#index"
  get "users/:id",to: "users#show",as: "show"
  get "users/new",to: "users#new",as: "new"
  post "users",to: "users#creat",as: "create"
  get "users/:id/edit",to: "users#edit",as: "edit"
  patch "users/:id",to: "users#update",as: "update"
  delete "users/:id",to: "users#destory",as: "destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
