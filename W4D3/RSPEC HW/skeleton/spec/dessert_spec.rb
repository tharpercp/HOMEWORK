require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "John") }
  let(:cookie) { Dessert.new("cookie", 10, chef)}
  describe "#initialize" do

    it "sets a type" do 
      expect(cookie.type).to eq("cookie")
    end
    it "sets a quantity" do 
      expect(cookie.quantity).to eq(10)
    end

    it "starts ingredients as an empty array" do
      expect(cookie.ingredients).to be_empty
    end
    it "raises an argument error when given a non-integer quantity" do 
      expect { Dessert.new("brownie", 'So so much', chef) }.to raise_error(ArgumentError)
    end
  end
  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do 
      expect(cookie.ingredients).to_not include("walnuts")
      cookie.add_ingredient("walnuts")
      expect(cookie.ingredients).to include("walnuts")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expect(@ingredients).to receive(:shuffle!)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do 
      expect {cookie.eat(5)}.not_to raise_error
      expect(cookie.quantity).to eq(5)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect {cookie.eat(15)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(cookie.serve).to eq("Joe has made 10 cookies!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do 
      expect(chef).to receive(:bake).with(cookie)
      cookie.make_more
    end
  end


end
