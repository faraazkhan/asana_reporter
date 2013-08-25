class Task < ActiveRecord::Base
  attr_accessible :asana_id, :name, :project_id
  belongs_to :project
  has_many :stories, :dependent => :destroy
  on_create :get_stories


  def get_stories
  end

end
