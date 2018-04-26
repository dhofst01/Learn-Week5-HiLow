Rails.application.routes.draw do
#root :to => 'public#webpage'
#get '/answers/:number' => 'main#answers'
get '/game' => 'game#try'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
