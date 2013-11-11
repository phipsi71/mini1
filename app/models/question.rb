class Question < ActiveRecord::Base


	scope :active, -> {where("is_active = 't'")}

	validates_inclusion_of :is_active, :in => [true, false]
	
end
