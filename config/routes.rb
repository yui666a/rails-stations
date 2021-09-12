Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'homes#top'
  get "homes/sitemap"
  get "movies" => "homes#movies"

  get "admin/movies" => "admins#movies"
end
