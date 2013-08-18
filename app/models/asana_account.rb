class AsanaAccount < ActiveRecord::Base
  attr_accessible :api_key, :account_name
  belongs_to :user
  validates_presence_of :api_key


  def initialize_api
    Asana.configure do |client|
      client.api_key = self.api_key
    end
  end

  def workspaces
    initialize_api
    Asana::Workspace.all
  end

  def tasks_for_workspace(workspace_id)
    initialize_api
    Asana::Task.all_by_workspace(workspace_id)
  end

  def users
    initialize_api
    Asana::User.all
  end

  def tasks_for_user(user_id)
    initialize_api
    Asana::Task.all_by_user(user_id)
  end

end 
