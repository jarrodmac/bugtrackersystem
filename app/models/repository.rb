class Repository < ActiveRecord::Base

	belongs_to :user
	has_many :bugs
end
