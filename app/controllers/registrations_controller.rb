class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:type, :first_name, :last_name, :email, :password, :password_confirmation, :mobile, :address, :qualification, :location, :experience, :academic_type_id, :stream_id)
  end

  def account_update_params
    params.require(:user).permit(:type, :first_name, :last_name, :email, :password, :password_confirmation, :current_password, :mobile, :address, :qualification, :location, :experience, :academic_type_id, :stream_id)
  end
end
