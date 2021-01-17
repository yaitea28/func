Rails.application.routes.draw do
  root to: 'records#new'
  get 'records/new', to: 'records#new'
  post 'records', to: 'records#create'
  get 'records', to: 'records#index'
end
