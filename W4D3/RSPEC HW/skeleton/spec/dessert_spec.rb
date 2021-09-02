require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:dessert) { Dessert.new("cookie", 10, "Joe")}
  describe "#initialize" do

    it "sets a type" do 
      expect(dessert.type).to eq("cookie")
    end
    it "sets a quantity" do 
      expect(dessert.quantity).to eq(10)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to be_empty
    end
    it "raises an argument error when given a non-integer quantity" do 
      expect { dessert.quantity('So so much') }.to raise_error(ArgumentError)
    end
  end
  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do 
      expect(dessert.ingredients).to_not include("walnuts")
      dessert.add_ingredient("walnuts")
      expect(dessert.ingredients).to include("walnuts")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expect(@ingredients).to receive(:shuffle!)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do 
      expect {dessert.eat(5)}.not_to raise_error
      expect(dessert.quantity).to eq(5)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect {dessert.eat(15)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(dessert.serve).to eq("Joe has made 10 cookies!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
