require 'fox16'

include Fox

require './photo'
require './photo_view'

class PictureBook < FXMainWindow
	def initialize(app)
		super(app, "Picture Book", :width => 600 , :height => 400)
		photo = Photo.new("shoe.jpg")
		photo_view = PhotoView.new(self, photo)
	end

	def create
		super
		show(PLACEMENT_SCREEN)
	end
end
if __FILE__ == $0
	FXApp.new do |app|
		PictureBook.new(app)
		app.create
		app.run
	end
end
