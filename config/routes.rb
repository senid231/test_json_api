Rails.application.routes.draw do
  jsonapi_resources :contacts
  jsonapi_resources :phone_numbers
end
