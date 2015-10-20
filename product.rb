#load 'category.rb'
require './category.rb'
#include category.rb
class Product
	def initialize(name=nil,amount=nil,price=nil)
		if name.nil? && amount.nil? && price.nil?
			print "Podaj nazwe : "
			@name = gets.chomp.capitalize
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

	def add_category(cat=nil,des=nil)
		if cat.nil?
			print "Podaj nazwe kategorji : "
			cat = gets.chomp.capitalize
			print "Dodac opis? (y/n)"
			if gets.chomp.upcase == "Y"
				des = gets.chomp
			end
		end
		@categories << Category.new(cat.capitalize,des)
	end

	def rm_categories(cat=nil)
		if cat.nil?
			print "Podaj nazwe kategorji do usuniecia : "
			cat = gets.chomp.capitalize
		end
		@categories.each do |z|
			if z == cat
				@categories.delete_at(z)
			end
		end
	end
# Tu sie zaczyna problem
	def show_categories
		print "\n"
		@categories.each { |x| print "#{x.name} " }
	end

	def show_categories_more
		print"\n"
		@categories.each do |x|
			print "\nNazwa : #{x.name}"
			print "\nOpis  : #{x.description}\n"
		end
	end
#tu sie skonczyl
	def show
		print "\nNazwa : #{@name}"
		print "\nIlosc : #{@amount}"
		print "\nCena  : #{@price}\n"
	end


	def sort_categories(asc=false)
		if asc == false
			@categories.sort!{|x,y| y.name <=> x.name}
		else
			@categories.sort!{|x,y| x.name <=> y.name}
		end
	end
end