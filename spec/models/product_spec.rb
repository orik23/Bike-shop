require 'rails_helper'

describe Product do
	context "when the product has comments" do # create context
		before do
			@product = Product.create!(name: "race bike", image_url: "haha", price: 100)
			@user = User.create!(email: "hello@hello.com", password: "1234567a")
			@product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
			@product.comments.create!(rating: 3, user: @user, body: "It is okay")	
			@product.comments.create!(rating: 5, user: @user, body: "The best bike!")
		end

		it "should return average rating" do
			expect(@product.average_rating). to eq 3
		end
	end

	context "when product has no name" do
    before do
      @product = Product.create(:description => "This is a test", image_url: "haha", price: 100)
    end
		it "is not valid" do
			expect(Product.new(description: "Nice bike!")).not_to be_valid
		end
	end
end #end describe Product





