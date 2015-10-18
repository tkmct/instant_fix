class ErrorMessage < ActiveRecord::Base
	# validates :title, presence: true
	validates :error_code, presence: true
	has_many :solutions
	has_many :error_change_logs
	has_many :clips
end
