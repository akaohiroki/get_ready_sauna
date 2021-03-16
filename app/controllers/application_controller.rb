class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:image, :nickname, :age, :gender_id, :sauna_history_id, :self_introduction])
    devise_parameter_sanitizer.permit(:account_update, keys: [:image, :nickname, :age, :gender_id, :sauna_history_id, :self_introduction])
  end
end