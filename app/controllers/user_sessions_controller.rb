class UserSessionsController < ApplicationController

  skip_before_filter :require_login, except: [:destroy]
  skip_authorization_check

  def new
    if current_user
      redirect_to user_asana_accounts_path(current_user)
    else
      @user_session = UserSession.new
    end
  end

  def create
    @user_session = UserSession.new(params[:user_session])

    if @user = login(@user_session.email, @user_session.password, @user_session.remember_me)
      redirect_back_or_to user_asana_accounts_path(@user), notice: "Successfully signed in."
    else
      flash.now[:alert] = "Sign in failed."
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to :sign_in, notice: "Signed out!"
  end

end
