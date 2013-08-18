class PagesController < ApplicationController

  skip_authorization_check

  def root
    redirect_to user_asana_accounts_path(current_user) if current_user
  end

end
