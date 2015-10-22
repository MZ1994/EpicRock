# require 'spec_helper'
require './category.rb'
describe Category do 
	it 'strings?' do
		test = Category.new("test","testing")
		expect(test.name.class).to eq(String)
		expect(test.description.class).to eq(String)
	end

	it 'capitalize and nil' do
		test2 = Category.new("tESt")
		expect(test2.name).to eq("Test")
		expect(test2.description).to be_nil
	end
end