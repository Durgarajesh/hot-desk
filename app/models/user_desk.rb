class UserDesk < ApplicationRecord
	validates_uniqueness_of :seat

	DESK_DETAILS = [
		["A1-01", 1],
		["A2-02", 2],
		["A3-03", 3],
		["A4-04", 4],
		["A5-05", 5],
		["A6-06", 6],
		["B1-07", 7],
		["B2-08", 8]
	]

	DESK = {
		1 => "A1-01",
		2 => "A2-02",
		3 => "A3-03",
		4 => "A4-04",
		5 => "A5-05",
		6 => "A6-06",
		7 => "B1-07",
		8 => "B2-08"
	}
end
