Rails.application.routes.draw do
  scope '/api/v1' do
    resources :person
    resources :car
  end
end
