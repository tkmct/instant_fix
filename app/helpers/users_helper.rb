module UsersHelper

	def good_count(user)
		i = 0
		user.solutions.each do |solution|
			i += solution.good
		end
		i
	end

	def urls(user)
		user.url.split(',').chomp if user.url.present?
	end
end