require 'rails_helper'

describe Product do
	when the product has comments do
	end 

	before do
		@product = Product.create!(name: "race bike")
		@user = User.create!(email: hello@hello.com, password: 1234567a)
		@product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
		@product.comments.create!(rating: 3, user: @user, body: "It is okay")	
		@product.comments.create!(rating: 5, user: @user, body: "The best bike!")
	end

	it "should return average rating" do
		expect(product.average_rating). to eq 3
	end

	it "is not valid" do
		expect(Product.new(description: "Nice bike!")).not_to be_valid
	end

end





