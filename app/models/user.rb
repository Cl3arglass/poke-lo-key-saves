class User < ApplicationRecord
	has_secure_password
	has_many :pokes
	validates :email, :name, presence: true
	validate :email, uniqueness: true
end
