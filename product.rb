class Product
	def initialize(name=nil,amount=nil,price=nil)
		if name == nil && amount == nil && price == nil
			print "Podaj nazwe : "
			@name = gets.chomp
			print "Podaj ilosc : "
			@amount = gets.chomp
			print "Podaj cene : "
			@price = gets.chomp
		else
			@name = name
			@amount = amount
			@price = price
		end
		@categories = []
	end

	def add_category(cat=nil)
		if cat == nil
			print "Podaj nazwe kategorji : "
			@categories << gets.chomp.capitalize
			@categories.sort
		else
			@categories << cat.capitalize
		end
	end

	def rm_categories(cat=nil)
		if cat == nil
			print "Podaj nazwe kategorji do usuniecia : "
			cat = gets.chomp.capitalize
		end
		@categories.each do |z|
			if z == cat
				@categories.delete_at(z)
			end
		end
	end

	def show_categories
		print "\n"
		@categories.each { |x| print "#{x} " }
	end

	def show
		print "\nNazwa : #{@name}"
		print "\nIlosc : #{@amount}"
		print "\nCena  : #{@price}\n"
	end


	def sort_categories(asc==false)
		if asc == false
			@categories.sort
		else
			@categories.sort{|x,y| x <=> y}
		end
	end
end