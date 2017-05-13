require 'spec_helper'

describe 'creating a new store', {type: :feature} do
  it 'allows the user to create a store' do
    visit '/'
    click_on 'Create Store'
    fill_in 'name', with: 'New Store'
    click_button 'Create Store'
    expect(page).to have_content 'New Store'
  end

  it 'allows a user to update the store name' do
    visit '/'
    click_on 'New Store'
    fill_in 'name', with: 'New Store2'
    click_on 'Edit Store Name'
    expect(page).to have_content 'New Store2'
  end

  it 'allows the user to delete a store' do
    visit '/'
    click_on 'New Store2'
    click_on 'Delete'
    expect(page).to have_content('Stores:')
  end

end
