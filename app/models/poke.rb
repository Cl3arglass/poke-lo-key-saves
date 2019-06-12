class Poke < ApplicationRecord
	belongs_to :user
	validates :name, :location, :found, presence: true
end
