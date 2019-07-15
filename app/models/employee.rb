class Employee < ApplicationRecord
	has_many :timers
	belongs_to :user
	validates  :first_name, :last_name, :picture, presence: true
	has_one_attached :picture
end
