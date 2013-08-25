class Project < ActiveRecord::Base
  attr_accessible :asana_id, :name
  has_many :tasks
  belongs_to :asana_account

  def get_tasks
  end
end
