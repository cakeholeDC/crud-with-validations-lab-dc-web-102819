class Song < ApplicationRecord
	# validates title:, presence: true
	# validate 


	# def song_name_must_not_repeat_within_year
	# 	!Song.all.include?(self.title) && song.find_by(title: self.title).year != self.year 
	# end
end
