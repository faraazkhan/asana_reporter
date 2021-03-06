class User < ActiveRecord::Base

  attr_accessible :name, :email, :password
  has_many :asana_accounts, dependent: :destroy

  authenticates_with_sorcery!

  validates :name,
            presence: true,
            length: { maximum: 30 }

  validates :email,
            presence: true,
            email: true,
            uniqueness: true

  validates :password,
            presence: true,
            length: { minimum: 6 },
            if: :password


  

end
