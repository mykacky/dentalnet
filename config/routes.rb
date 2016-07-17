Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  get 'map/index'

  resources :pics
  resources :users
  root 'dentalnet#index'
  get  'detail_search' => 'dentalnet#detail_search'
  get  'result' => 'dentalnet#result'
  get  'comment' => 'dentalnet#comment'
  post 'comment' => 'dentalnet#comment_new'
  get  'search' => 'dentalnet#search'
  get  'result_category' => 'dentalnet#result_category'

  get  '_form' => 'dentalnet#_form'
  get  'dental_detail' => 'dentalnet#dental_detail'
  get  'location' => 'dentalnet#location'
  # get  '/auth/:provider/callback', to: 'users#create', as: :auth_callback
  # get  '/auth/failure', to: 'users#auth_failure', as: :auth_failure
end
