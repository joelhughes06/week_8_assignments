module ApplicationHelper
	def fix_url(str)
		str.starts_with?('http://') ? str : "http://#{str}"
	end

	def display_datetime(dt)
		dt.strftime("%m/%d/%Y %l:%M%P %Z") #03/22/14 1:27pm MST
	end

	def display_datetime(dt)
		if logged_in? && !current_user.time_zone.blank?
			dt = dt.in_time_zone(current_user.time_zone)
		end
	end
end
