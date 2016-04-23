Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get '/' => 'site#index', as: :root
  resources :events, path: :eventos
end
