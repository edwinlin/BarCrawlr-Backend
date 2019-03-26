class User < ApplicationRecord
  	has_secure_password

	has_many :roles
	has_many :tasks
	has_many :organizations, through: :roles

	validates :username, uniqueness: { case_sensitive: false }

end
