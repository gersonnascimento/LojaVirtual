Rails.application.routes.draw do
  root "start#index"
  get "/produtos/new" => "produtos#new"
  get "/produtos" => "start#admin"
  post "/produtos" => "produtos#create"
  post "/usuarios" => "usuarios#create"
  get "/produtos/:id/remove" => "produtos#apagar"
  get "/produtos/:id/buy" => "produtos#comprar"
end
