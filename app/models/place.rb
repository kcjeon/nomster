class Place < ActiveRecord::Base
	belongs_to :user
	has_many :comments 
	
	geocoded_by :address
	after_validation :geocode

	validates :name, :presence => true

	paginates_per 10
	max_paginates_per 10
end
