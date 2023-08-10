Rails.application.routes.draw do
  resources :prisons, only: [:show] do
    resources :criminals, only: [:new, :create]
  end
  resources :criminals, only: :destroy do
    resources :convictions, only: [:new, :create]
  end
end


# As a user I can see one prison's criminals
# => prisons#show
# As a user I can add a criminal to a prison
# => criminals#new
# => criminals#create
# 'prisons/:prison_id/criminals/new'
# 'prisons/:prison_id/criminals'
# As a user I can release a criminal
# => criminals#destroy
# 'criminals/:id'
# As a user I can convict a criminal of a crime
