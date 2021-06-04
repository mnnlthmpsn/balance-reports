Rails.application.routes.draw do

  resources :cost_uploads
  root 'file_uploads#index'

  resources :generated_reports
  resources :file_uploads
  resources :source_masters
  resources :category_masters
  resources :homes

  # custom routes
  # route to handle import submission
  post 'import' => 'file_uploads#handle_import'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
