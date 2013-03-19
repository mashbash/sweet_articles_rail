SweetArticlesRail::Application.routes.draw do
  
  resources :category, :only => [:index]

  get "/categories/:name/articles/:url" => "articles#show", :as => :article
  get "/articles/:month/:day/:year/:url" => "articles#redirect", :as => :redirect
  get "/categories/:name/articles/" => "categories#show", :as => :category
  get "/tag/:name/articles/" => "tags#show", :as => :tag

  root :to => "categories#index"

end
