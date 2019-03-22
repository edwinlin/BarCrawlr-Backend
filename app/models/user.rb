class User < ApplicationRecord
	has_many :roles
	has_many :tasks
	has_many :organizations, through: :roles
	has_many :projects, through: :organizations
end

