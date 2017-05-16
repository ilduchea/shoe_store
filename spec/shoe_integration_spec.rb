require 'spec_helper'

describe 'the shoe path', {type: :feature} do
  it 'allows the user to create a shoe' do
    visit '/'
    click_on 'Create Shoe'
    fill_in 'brand', with: 'New Shoe'
    fill_in 'price', with: 51.42
    click_button 'Create Shoe'
    expect(page).to have_content '$51.42'
  end
end
