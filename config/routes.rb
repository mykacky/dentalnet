Rails.application.routes.draw do
  get 'map/index'

  resources :users
  root 'dentalnet#index'
  get  'detail_search' => 'dentalnet#detail_search'
  get  'result' => 'dentalnet#result'
  get  'comment' => 'dentalnet#comment'
  get  'location' => 'dentalnet#location'
  get  '/auth/:provider/callback', to: 'users#create', as: :auth_callback
  get  '/auth/failure', to: 'users#auth_failure', as: :auth_failure

end
