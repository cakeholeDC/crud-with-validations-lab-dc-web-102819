class SongsController < ApplicationController
	before_action :find_song_by_id, only: [:show, :edit, :update]

	def index
		@songs = Song.all
	end

	def new
		@song = Song.new
	end

	def create
		song = Song.create(song_params)
		redirect_to song_path(song)
	end

	def update
		@song.update(song_params)
		redirect_to song_path(@song)
	end

	private

		def find_song_by_id
			@song = Song.find(params[:id])
		end

		def song_params
			params.require(:song).permit(:title, :genre, :artist_name, :released, :release_year)
		end

end
