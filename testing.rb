include product.rb
include category.rb
	a=Product.new#("Oliwki","16 kg","25,00 $")
	b=Product.new("Zeszyt","25 szt","5,50 $")
#	c=Product.new("Error","13 szt","6,66 $")
#
	a.add_category("Jedzenie")
	b.add_category#("Nauka")
	b.add_category("Sztuka")
	b.add_category
#	c.add_category("eRRor")
#	c.add_category("BlAd")
#	c.add_category("13")

	a.show_categories
	a.show
	b.show_categories
	b.show
#	c.show_categories
# 	c.show