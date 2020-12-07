Rails.application.routes.draw do
  resources :requisitions
  resources :fines
  resources :equipment
  resources :equip_types
  resources :students
  resources :subjects
  resources :professors
  resources :schools
  resources :classrooms
  resources :responsibles
  resources :secretaries
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
