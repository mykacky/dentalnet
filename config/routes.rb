Rails.application.routes.draw do
  root 'dentalnet#index'
  get  'detail_search' => 'dentalnet#detail_search'
  get  'result' => 'dentalnet#result'
end
