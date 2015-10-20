class categoris
	def initialize(name=nul,str=nul)
		if name.nul?
			@name == gets.chomp
		else
			@name == name
		end
		if str.nul?
			print "Do you wanna add description? (y/n)"
			if gets.chomp.upcase == Y
				@description == gets.chomp
			end
		else
			@description == str
		end
	end
end