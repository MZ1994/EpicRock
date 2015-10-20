require './product.rb'
	a=Product.new("Oliwki","16 kg","25,00 $")
	b=Product.new("Zeszyt","25 szt","5,50 $")
#	c=Product.new("Error","13 szt","6,66 $")
#
	a.add_category("Jedzenie","Jestes glodny?")
	a.add_category("Abstrakcja")
	a.add_category("Zorro")
	a.add_category("Gehenna")
	b.add_category("Nauka")
	b.add_category("Sztuka","Oby tylko nie nowoczesna")
	b.add_category("Gry")
	b.add_category("Armagedon")
#	c.add_category("eRRor")
#	c.add_category("BlAd")
#	c.add_category("13")

	a.show_categories
#	a.show
	b.show_categories
#	b.show
#	c.show_categories
# 	c.show
#	a.show_categories_more
#	b.show_categories_more
	a.sort_categories
	b.sort_categories(true)
	a.show_categories
	b.show_categories