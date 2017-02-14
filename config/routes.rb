Rails.application.routes.draw do


get'tasks', to: "tasks#index"

get'task/:id', to: "tasks#show", as: "created_task"

get 'tasks/new', to:"tasks#new"

post 'tasks', to:"tasks#create"

get 'tasks/:id/edit', to: "tasks#edit", as: "updated_task"

patch 'tasks/:id', to: "tasks#update"

delete 'tasks/:id', to: "tasks#delete", as:"deleted_task"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


