# frozen_string_literal: true

class Clients::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters

  def new
    build_resource({})
    resource.build_client_profile
    respond_with resource
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
<<<<<<< HEAD
      user_params.permit(:email, :password, :password_confirmation, client_profile_attributes: %i[first_name last_name phone currency_type])
    end

    devise_parameter_sanitizer.permit(:account_update) do |user_params|
      user_params.permit(:email, :password, :password_confirmation, :current_password, client_profile_attributes: %i[id first_name last_name phone currency_type])
=======
      user_params.permit(:email, :password, :password_confirmation, client_profile_attributes: %i[first_name last_name phone address_attributes: %i[id country state city build flats]])
    end

    devise_parameter_sanitizer.permit(:account_update) do |user_params|
      user_params.permit(:email, :password, :password_confirmation, :current_password, client_profile_attributes: %i[id first_name last_name phone address_attributes: %i[id country state city build flats]])
>>>>>>> 8994db95e97503f998e933da9501c0c1b79165cb
    end
  end

  def update_resource(resource, params)
    if params[:password].blank? && params[:password_confirmation].blank?
      resource.update_without_password(params.except(:current_password))
    else
      super
    end
  end
end
