Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources:class_infos
  resources:user_infos
  resources:evaluations
  resources:class_members
end
