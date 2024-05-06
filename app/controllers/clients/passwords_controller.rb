# frozen_string_literal: true

class Clients::PasswordsController < Devise::PasswordsController
  # GET /resource/password/new
  def new
    super
  end

  # POST /resource/password
  def create
    super
  end

  # GET /resource/password/edit?reset_password_token=abcdef
  # def edit
  #   super
  # end

  # PUT /resource/password
  # def update
  #   super
  # end

  protected

  def after_resetting_password_path_for(resource)
    super(resource)
  end

<<<<<<< HEAD
  #The path used after sending reset password instructions
=======
  # The path used after sending reset password instructions
>>>>>>> 8994db95e97503f998e933da9501c0c1b79165cb
  def after_sending_reset_password_instructions_path_for(resource_name)
    super(resource_name)
  end
end
