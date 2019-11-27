Song.destroy_all

10.times do 
	Song.create(title: Faker::Music::Phish.song,
				released: Faker::Boolean.boolean,
				release_year: rand(1955..2019),#Faker::Business.credit_card_expiry_date,
				artist_name: Faker::Music.band,
				genre: Faker::Music.genre
				)
end