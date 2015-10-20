class categoris
	def initialize(name=nul,str=nul)
		if name.nul?
			@name == gets.chomp
		else
			@name == name
		end
		@description == str
	end

	attr_reader : @name
	attr_accessor : @description
end