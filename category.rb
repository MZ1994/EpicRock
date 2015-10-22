class Category
	def initialize(name=nil,str=nil)
		if name.nil?
			@name = gets.chomp.capitalize
		else
			@name = name.capitalize
		end
		@description = str
	end

	attr_reader :name
	attr_accessor :description
end