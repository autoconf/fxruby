class PhotoView < FXImageFrame
	def initialize(p, photo)
		super(p, nil)
		load_image(photo.path)
	end
	def load_image(path)
		File.open(path, "rb") do |io|
			self.image = FXJPGImage.new(app, io.read)
		end
	end
end	
