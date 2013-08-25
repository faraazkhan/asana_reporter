class AsanaAccount < ActiveRecord::Base
  attr_accessible :api_key, :account_name
  belongs_to :user
  validates_presence_of :api_key
  has_many :projects, dependent: :destroy
  has_many :assignees, dependent: :destroy

  def synchronize_data
    initialize_api
    get_projects
    get_assignees
    get_tasks_for_projects
    unset_synchronization_in_progress_status_flag
  end


  def initialize_api
    Asana.configure do |client|
      client.api_key = self.api_key
    end
  end

  def set_sync_in_progress_status_flag
    self.update_attribute(:sync_in_progress, true)
  end

  def unset_sync_in_progress_status_flag
    self.update_attribute(:sync_in_progress, false)
  end

  def get_projects
    projects = Asana::Project.all
    projects.each do | p|
      self.projects.create(:asana_id => p.id, :name => p.name)
    end
  end

  def get_assignees
    assignees = Asana::User.all
    assignees.each do |a|
      self.assignees.create(:asana_id => a.id, :name => a.name)
    end
  end

  def get_tasks_for_projects
    self.projects.each do |p|
      p.get_tasks
    end
  end

  #def workspaces
    #initialize_api
    #Asana::Workspace.all
  #end

  #def tasks_for_workspace(workspace_id)
    #initialize_api
    #Asana::Task.all_by_workspace(workspace_id)
  #end

  #def users
    #initialize_api
    #Asana::User.all
  #end

  #def tasks_for_user(user_id)
    #initialize_api
    #Asana::Task.all_by_user(user_id)
  #end

end 
