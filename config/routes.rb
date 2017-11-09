Rails.application.routes.draw do
  root "start#index"
  get "/produtos/new" => "produtos#new"
  post "/produtos" => "produtos#create"
end
