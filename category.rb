class Category
	def initialize(name=nil,str=nil)
		if name.nil?
			@name = gets.chomp
		else
			@name = name
		end
		@description = str
	end

	attr_reader :name
	attr_accessor :description
end