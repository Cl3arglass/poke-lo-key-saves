class Poke < ApplicationRecord
	belongs_to :user
	validates :name, :location, :found, :user, presence: true
end
