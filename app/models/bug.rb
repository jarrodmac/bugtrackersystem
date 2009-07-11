class Bug < ActiveRecord::Base

	belongs_to :user
	belongs_to :project
	belongs_to :repository
	
	def before_save
	self.project_id = nil if self.project_id == 0
	self.repository_id = nil if self.repository_id == 0
  end
end
