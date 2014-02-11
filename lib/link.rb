class Link 
	# attr_reader :uri

	include DataMapper::Resource

		property :id, Serial
		property :title, String
		property :url, String

	# def initialize(uri)
	# 	@uri = uri
	# end
	
end