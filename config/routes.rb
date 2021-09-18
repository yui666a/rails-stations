Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'homes#top'
  # station 1
  get "movies" => "homes#movies"
  # station 2
  get "admin/movies" => "admins#movies"
  # station 3
  get "admin/movies/new" => "admins#new"
  post 'admin/movies', to: 'admins#create'
  # station 4
  get "admin/movies/:id" => "admins#edit_redirect"
  get "admin/movies/:id/edit" => "admins#edit"
  put "admin/movies/:id" => "admins#update"
  # station 4
  delete 'admin/movies/:id', to: 'admins#delete'
  # station 5
  get "admin/movies" => "admins#movies"
end
