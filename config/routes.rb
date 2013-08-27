Rails3BootstrapDeviseCancan::Application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  authenticated :user do
    root :to => 'users#index'
  end
  root :to => "users#index"
  devise_for :users
  resources :users

  resources :upload_csvs
  resources :csvs

  resources :apisettings do
    collection do
      get :load_list
    end
  end

end