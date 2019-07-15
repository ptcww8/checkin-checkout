class Timer < ApplicationRecord
	belongs_to :employee
	validates  :time_in, :employee_id, presence:true
end
