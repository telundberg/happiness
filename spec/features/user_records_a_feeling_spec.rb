require 'rails_helper'

feature 'user signs in', %Q{
  As a signed in user
  I want to record my feelings
  So I quantify my unhappiness
} do
  scenario 'user records unhappiness' do
    user = FactoryGirl.create(:user)

    visit feelings_path

    fill_in 'unhappiness', with: 5
    click_button 'record it'

    expect(page).to have_content('unhappiness recorded')
  end
end
