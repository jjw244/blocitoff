class RegistrationsController < Devise::RegistrationsController

  protected

  def after_sign_up_path_for(resource)
    users_show_path
  end

  # def after_inactive_sign_up_path_for(resource)
  # end
end
