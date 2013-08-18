class AsanaAccount < ActiveRecord::Base
  attr_accessible :api_key
  belongs_to :user
  validates_presence_of :api_key
  URL= 'https://www.cws-cgicloud-apps.com:8443'
end 
