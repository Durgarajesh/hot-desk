module UserDesksHelper
	def alloted_user(created_by)
		@user = User.find_by_id(created_by)
		@user.name
	end

	def alloted_user_email(created_by)
		@user = User.find_by_id(created_by)
		@user.email
	end

	def formatted_dates(from_date, end_date)
		start_date = from_date.strftime("%d %b %Y")
		end_date = end_date.strftime("%d %b %Y")
		"#{start_date} - #{end_date}"
	end
end
