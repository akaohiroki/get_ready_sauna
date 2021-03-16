class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_account_update_params, only: [:update]

  def after_update_path_for(resource)
    user_path(current_user)
  end

  protected

  def update_resource(resource, params)
    resource.update_without_current_password(params)
  end

  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:image, :nickname, :age, :gender_id, :sauna_history_id, :self_introduction])
  end
end
