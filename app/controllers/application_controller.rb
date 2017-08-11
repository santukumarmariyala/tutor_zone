class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!



  def sign_up_params
    devise_parameter_sanitizer.sanitize(:sign_up)
  end

  def after_sign_in_path_for(resource)
    if current_user.type == "Student"
      home_student_home_path
    elsif current_user.type == "Faculty"
      home_faculty_home_path
    else
      root_path
    end

  end
end
