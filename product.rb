class Product
	#@categories = Array.new
	@categories
	@name
	@amount
	@price

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
		#if !@categories.include?(cat) 
		#	@categories << cat.capitalize
		#else
		#	puts "Category alredy exist!"
		#end
		#@categories.to_a
		#@categories.push(cat)
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

end


#	a=Product.new#("Oliwki","16 kg","25,00 $")
#	b=Product.new("Zeszyt","25 szt","5,50 $")
#	c=Product.new("Error","13 szt","6,66 $")
#
#	a.add_category("Jedzenie")
#	b.add_category#("Nauka")
#	b.add_category("Sztuka")
#	b.add_category
#	c.add_category("eRRor")
#	c.add_category("BlAd")
#	c.add_category("13")

#	a.show_categories
#	a.show
#	b.show_categories
#	b.show
#	c.show_categories
# 	c.show