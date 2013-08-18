class AsanaAccountsController < ApplicationController

  load_and_authorize_resource
  before_filter :load_user

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @asana_account = @user.asana_accounts.build(params[:asana_account])
    if @asana_account.save
      redirect_to user_asana_account_path(@user, @asana_account), notice: 'Asana account was successfully added.'
    else
      render action: "new"
    end
  end

  def update
    if @asana_account.update_attributes(params[:asana_account])
      redirect_to user_asana_account_path(@user, @asana_account), notice: 'Asana account was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @asana_account.destroy
    redirect_to user_asana_accounts_url
  end


 
end
