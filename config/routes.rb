Rails.application.routes.draw do
  get '/' => "home#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "home/profile" => "home#profile"
  get "home/access" => "home#access"
  get 'posts/new' => "posts#new"
  get "posts/index" =>"posts#index"
  post "posts/create" => "posts#create"
end
