class Organization < ApplicationRecord
	has_many :roles
	has_many :projects
	has_many :users, through: :roles
	has_many :tasks, through: :projects
end
