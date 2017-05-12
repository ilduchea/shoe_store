require 'money'
require 'spec_helper'

describe(Store) do
  it { should have_and_belong_to_many(:shoes)}

  it { should validate_presence_of(:name)}

  it 'ensures the length of name is a maximum of 100 characters' do
    store = Store.new({:name => 'n'.*(101)})
    expect(store.save).to eq(false)
  end

  it 'capitalizes the first letter of each word in the name' do
    store = Store.create({:name => 'store name'})
    expect(store.name).to eq('Store Name')
  end
end

describe(Shoe) do
  it { should have_and_belong_to_many(:stores)}

  it { should validate_presence_of(:brand)}

  it 'ensures the length of brand is a maximum of 100 characters' do
    shoe = Shoe.new({:brand => 'b'.*(101)})
    expect(shoe.save).to eq(false)
  end

  it 'capitalizes the first letter of each word in the brand' do
    shoe = Shoe.create({:brand => 'brand name'})
    expect(shoe.brand).to eq('Brand Name')
  end

  it 'stores the price as a monetary value' do
    shoe = Shoe.create({:brand => 'brand name'})
    price = Shoe.to_money(10)
    shoe.update({:price => price})
    expect(shoe.price).to eq('$10.00')
  end
end
