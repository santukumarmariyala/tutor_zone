Rails.application.routes.draw do
  resources :stream_subjects
  resources :years
  resources :subjects
  resources :streams
  resources :academic_types
  get 'home/search'
  get 'home/student_home'
  get 'home/faculty_home'
 devise_for :users, :controllers => { registrations: 'registrations' }
 root :to => "home#student_home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
