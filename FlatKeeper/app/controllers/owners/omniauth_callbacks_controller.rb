# frozen_string_literal: true

class Owners::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:twitter]

  # You should also create an action method in this controller like this:
  # def twitter
  # end
  def facebook
    # Debemos crear el método .from_omniauth en nuestro modelo User (app/models/user.rb)
    @owner = Owner.from_omniauth(request.env["omniauth.auth"])
    if @owner.persisted?
    sign_in_and_redirect @owner
    set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
    redirect_to root_path, notice: 'Error al iniciar sesión con Facebook.'
    end
   end
  # More info at:
  # https://github.com/plataformatec/devise#omniauth

  # GET|POST /resource/auth/twitter
  # def passthru
  #   super
  # end

  # GET|POST /users/auth/twitter/callback
  # def failure
  #   super
  # end

  # protected

  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end
end
