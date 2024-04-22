class Api::V1::RegistrationsController < Devise::RegistrationsController
    respond_to :json
    skip_before_action :verify_authenticity_token, only: [:create]
    before_action :configure_sign_up_params, only: [:create]
    before_action :configure_account_update_params, only: [:update]
  
    def create
      build_resource(sign_up_params)
  
      resource_saved = resource.save
      yield resource if block_given?
      if resource_saved
        sign_up(resource_name, resource)
        render json: { success: true, message: 'Signed up successfully', profile: resource }
      else
        clean_up_passwords resource
        set_minimum_password_length
        render json: { success: false, errors: resource.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    protected
  
    def configure_sign_up_params
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :login, :role, :tel, :cpf, :email, :password])
    end
  
    def configure_account_update_params
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :login, :role])
    end
  end