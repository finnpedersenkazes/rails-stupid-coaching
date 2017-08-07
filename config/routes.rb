Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'questions#answer'
  get '/answer' => 'questions#answer'
  get '/answer/:query', to: 'questions#answer'
  get "/ask" => 'questions#ask'
  post "/ask" => 'questions#answer'

end
