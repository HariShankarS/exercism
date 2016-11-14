class Bst
	attr_accessor :data,:left,:right
	
	def initialize(data)
		@data = data
	end

	def insert value
		if value <= @data
			left.data = value
		else

		end
	end
end