class Solution < ActiveRecord::Base
	validates :solution, presence: true

	belongs_to :user
	belongs_to :error_message
end
