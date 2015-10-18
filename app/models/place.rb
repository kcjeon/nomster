class Place < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	has_many :pictures
	
	geocoded_by :address
	after_validation :geocode

	validates :name, :address, :description, :presence => true
	validates_length_of :name, :minimum => 4, :message => "Must be more than 3 characters"

	paginates_per 10
	max_paginates_per 10
end
