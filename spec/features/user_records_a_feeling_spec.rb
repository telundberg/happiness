require 'rails_helper'

feature 'user signs in', %Q{
  As a signed in user
  I want to record my feelings
  So I quantify my unhappiness
} do

  # let!(:user) { FactoryGirl.create :user }

  # let!(:feeling) { FactoryGirl.create :feeling }

  # before do
  #   visit root_path
  # end

  scenario 'user records unhappiness' do

    # visit new_feeling_level_path(feeling)
    visit new_feeling_level_path(8)

    select '9', from: 'Amount'
    click_button 'Add amount'

    expect(page).to have_content('Level of unhappiness added!')
  end
end
