class Beer < ActiveRecord::Base
	belongs_to :brewery
	has_many :notes
	has_many :beer_geeks, through: :notes
	accepts_nested_attributes_for :notes, allow_destroy: true

	def moyenne
			notes.map { |note| note.star }.sum / notes.count unless notes.empty?
	end
end
