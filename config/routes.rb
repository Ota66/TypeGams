Rails.application.routes.draw do
  root to: "score#index"
  devise_for :users
  
end
