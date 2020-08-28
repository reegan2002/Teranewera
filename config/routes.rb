Rails.application.routes.draw do
  root 'tera#login'
  get 'about', to: "tera#about"
  get 'contact', to: "tera#contact"
  post '/', to: "tera#create"
  get 'logout', to: 'tera#destroy'
  get 'home', to: 'students#home'
  get 'book', to: 'students#book'
  get 'profile', to: 'students#profile'
  resources :students

end
