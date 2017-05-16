require 'spec_helper'

describe(Store) do
  it { should have_and_belong_to_many(:shoes)}

  it 'ensures the name is present' do
    store = Store.new({:name => ''})
    expect(store.save).to eq(false)
  end

  it 'ensures the length of name is a maximum of 100 characters' do
    store = Store.new({:name => 'n'.*(101)})
    expect(store.save).to eq(false)
  end

  it 'ensures the name is unique' do
    store1 = Store.create({:name => 'store name'})
    store2 = Store.new({:name => 'store name'})
    expect(store2.save).to eq(false)
  end

  it 'capitalizes the first letter of each word in the name' do
    store = Store.create({:name => 'store name'})
    expect(store.name).to eq('Store Name')
  end

end
