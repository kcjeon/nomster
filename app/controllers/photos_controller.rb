class PhotosController < ApplicationController

private

	def photo_params
		params.require(:photo).permit(:picture, :place_id)
	end

end
