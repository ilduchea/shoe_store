require 'spec_helper'

describe 'creating a new store', {type: :feature} do
  it 'allows the user to create a store' do
    visit '/'
    click_on 'Create Store'
    fill_in 'name', with: 'New Store'
    click_button 'Create Store'
    expect(page).to have_content 'New Store'
  end
end
