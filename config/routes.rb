Rails.application.routes.draw do
  
  namespace :api do
    resources :users
    resources :courses do
      resources :enrollments
      get '/:course_id/unenrolled', to: 'enrollments#unenrolledUsers'
      get '/:course_id/enrolled', to: 'enrollments#enrolledUsers'
    end
    get '/:id/courses', to: 'users#courses'
    get '/:id/users', to: 'courses#users'
  end

end