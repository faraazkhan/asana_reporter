class Story < ActiveRecord::Base
  attr_accessible :asana_id, :final_section_name, :name, :original_section_name, :performed_at, :performed_by_id, :section_event, :task_id
  belongs_to :task
end
