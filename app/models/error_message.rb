class ErrorMessage < ActiveRecord::Base
	has_many :solutions
	has_many :error_change_logs
end
