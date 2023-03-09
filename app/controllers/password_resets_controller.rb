class PasswordResetsController < ApplicationController
  def new
  end 

  def create
    @uset= User.find_by(email: params[:email])

    if @user.present?
      PasswordMailer.with(user: @user).reset.deliver_now
  
    end
  redirect_to root_path, notice: "If an account with this email is found, we will send a link to reset your password"
  end

  def edit
    @user= User.find_signed(params[:token], purpose: "password_reset")
  rescue ActiveSupport::MessageVerifier::InvalidSignature
    redirect_to sign_in_path, alert: "Your token has expired, please try again."
  end
end


# F6tsL6WnoqzoShCfoaBdg-api key
# NcOD1B5WzrlnaWPpctQYu1DoIRIwCEJNDXtmilk6DSY-API secret key
