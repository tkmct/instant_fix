class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def twitter
    @user = User.from_omniauth(request.env["omniauth.auth"])
    sign_in_and_redirect @user
  end

  private
  def user_params(oauth)
    params = {uid: oauth.uid, provider: oauth.provider}
    params.require(:user).permit(:uid, :provider)
  end
end
