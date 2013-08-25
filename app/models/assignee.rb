class Assignee < ActiveRecord::Base
  attr_accessible :asana_id, :email, :name
  belongs_to :asana_account
end
