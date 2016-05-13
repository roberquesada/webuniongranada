Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get '/' => 'site#index', as: :root
  get '/contact' => 'site#contact', path: :contacto
  get '/wug' => 'site#about'
  resources :events, only: [:index, :show],  path: :eventos
  resources :speakers, only: [:index, :show],  path: :ponentes
end
