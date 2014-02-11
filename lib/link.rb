class Link 
	# attr_reader :uri

	include DataMapper::Resource

		property :id, Serial
		property :title, String
		property :url, String

		has n, :tags, :through => Resource 

	# def initialize(uri)
	# 	@uri = uri
	# end

end