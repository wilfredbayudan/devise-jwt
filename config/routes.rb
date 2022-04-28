Rails.application.routes.draw do

  devise_for :users,
             controllers: {
                 sessions: 'users/sessions',
                 registrations: 'users/registrations'
             }, skip: [:sessions]
  get '/member-data', to: 'members#show'
end