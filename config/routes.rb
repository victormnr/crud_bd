Rails.application.routes.draw do
  resources :equipment
  resources :equip_types
  resources :students
  resources :fines
  resources :requisitions
  resources :subjects
  resources :professors
  resources :schools
  resources :classrooms
  resources :responsibles
  resources :secretaries
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
