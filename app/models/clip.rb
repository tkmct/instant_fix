class Clip < ActiveRecord::Base
	belongs_to :users
	belongs_to :error_messages
end
