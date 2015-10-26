# require 'spec_helper'
require './product.rb'
describe Product do
	it 'create empty array' do
		test = Product.new("one",1,1)

		expect(test.categories).to eq([])
		# test.categories.shoud == []
	end

	it 'to string or not to string?' do
		test2 = Product.new("two",2,2)

		expect(test2.name.class).to eq(String)
		expect(test2.amount.class).to eq(Fixnum)
		expect(test2.price.class).to eq(Fixnum)
		# test2.name.shoud be_string
		# test2.amount.shoud be_integer
		# test2.price.shoud be_integer
	end

	it 'capitalize?' do
		test3 = Product.new("tReE",3,3)
		test3.add_category("aBCdeFGh")

		expect(test3.name).to eq("Tree")
		expect(test3.categories[0].name).to eq("Abcdefgh")
		# test3.name.shoud == "Tree"
		# test3.categories[0].shoud == "Abcdefgh"
	end
end