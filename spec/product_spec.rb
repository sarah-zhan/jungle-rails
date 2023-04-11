require 'rails_helper'

RSpec.describe Product, type: :model do
  describe '.validates' do
    it 'should have a name' do
      product = Product.new(name: nil)
      expect(product).not_to be_valid
    end
    it 'should have a price' do
      product = Product.new(price: nil)
      expect(product).not_to be_valid
    end
    it 'should have a quantity' do
      product = Product.new(quantity: nil)
      expect(product).not_to be_valid
    end
    it 'should have a category' do
      product = Product.new(category: nil)
      expect(product).not_to be_valid
    end
    it 'returns errors if name, price, quantity or category missing' do
      product = Product.new(category: nil)
      expect(product.errors.full_messages).to be_truthy
    end
  end
end
