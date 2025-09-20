Rails.application.routes.draw do
  root to: "home#index"
  get  "dashboard", to: "home#dashboard"
  resource :session
  resources :passwords, param: :token

  get "up" => "rails/health#show", as: :rails_health_check

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
