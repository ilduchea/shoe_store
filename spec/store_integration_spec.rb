require 'spec_helper'

describe 'creating a new store', {type: :feature} do
  it 'allows the user to create a store' do
    visit '/'
    click_on 'Create Store'
    fill_in 'name', with: 'New Store'
    click_button 'Create Store'
    expect(page).to have_content 'New Store'
  end

  it 'allows the user to create a shoe' do
    visit '/'
    click_on 'Create Shoe'
    fill_in 'brand', with: 'New Shoe'
    fill_in 'price', with: 51.42
    click_button 'Create Shoe'
    expect(page).to have_content '$51.42'
  end

  it 'allows a user to update the store name' do
    visit '/'
    click_on 'New Store'
    fill_in 'name', with: 'New Store2'
    click_on 'Edit Store Name'
    expect(page).to have_content 'New Store2'
  end

  it 'allows the user to add a shoe to the store' do
    visit '/'
    click_on 'New Store2'
    select 'New Shoe', from: 'shoe'
    click_on 'Add Shoe'
    expect(page).to have_content('New Shoe')
  end

  it 'allows the user to remove a shoe from the store' do
    visit '/'
    click_on 'New Store2'
    click_on 'Remove'
    expect(page).to have_no_content('Remove')
  end

  it 'allows the user to delete a store' do
    visit '/'
    click_on 'New Store2'
    click_on 'Delete'
    expect(page).to have_content('Stores:')
  end

end
