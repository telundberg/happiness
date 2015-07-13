require 'rails_helper'

feature 'user signs in', %Q{
  As a signed in user
  I want to record my feelings
  So I quantify my unhappiness
} do

  # let!(:user) { FactoryGirl.create :user }
  #
  # before do
  #   visit root_path
  #   sign_in_as user
  # end

  scenario 'user records unhappiness' do

    visit new_level_path

    select '9', from: 'Amount'
    click_button 'Add amount'

    expect(page).to have_content('Level of unhappiness added!')
  end
end
