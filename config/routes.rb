Rails.application.routes.draw do
  #get 'students/index'
  resources :tasks
  devise_for :admins, :controllers => {:registrations => "admins/registrations"}
  #devise_for :teachers
  #devise_for :students

  # get "tasks/student/:student_id", to: "tasks#to_student"

#  devise_for :students, :controllers => {:registrations => "students/registrations"}
 devise_for :students, :controllers => {:registrations => "students/registrations"}
 resources :students, :only =>[:show]
  
 devise_for :teachers, :controllers => {:registrations => "teachers/registrations"}
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/home/index", to: "home#index" 

  match '/students', to: 'students#index', via: 'get'
  match '/students/:id', to: 'students#show', via: 'get'

  get 'students/edit/:id' => 'students#edit', :as => 'edit' 
  patch "students/:id" => "students#update"
  put "students/:id" => "students#update"




  # Defines the root path route ("/")
  root "home#index"
end

