class Product
	#@categories = Array.new
	@categories
	@name
	@amount
	@price

	def initialize(name,amount,price)
		@name = name
		@amount = amount
		@price = price
		@categories = []
	end

	def add_category(cat)
		#if !@categories.include?(cat) 
			@categories << cat.capitalize
		#else
		#	puts "Category alredy exist!"
		#end
		#@categories.to_a
		#@categories.push(cat)
		
		#c=@categories.to_a
		#c << cat
		#@categories = c
	end

	def rm_categories(cat)
		@categories.each do |z|
			if z == cat.capitalize
				@categories.delete_at(z)
			end
		end
	end

	def show_categories
		print "\n"
		@categories.each { |x| print "#{x} " }
	end

	def show
		print "\nNazwa : #{@name} "
		print "Ilosc : #{@amount }"
		print "Cena  : #{@price}\n"
	end

end


a=Product.new("Oliwki","16 kg","25,00 $")
b=Product.new("Zeszyt","25 szt","5,50 $")
c=Product.new("Error","13 szt","6,66 $")

a.add_category("Jedzenie")
b.add_category("Nauka")
b.add_category("Sztuka")
c.add_category("eRRor")
c.add_category("BlAd")
c.add_category("13")
a.show_categories
a.show
b.show_categories
b.show
c.show_categories
c.show