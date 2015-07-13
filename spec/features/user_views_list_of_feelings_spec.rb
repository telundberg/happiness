require 'rails_helper'

feature 'user signs in', %{
  As a signed in user
  I want to see a list of feelings
  So I can feel unhappy
} do
  scenario 'user sees a list' do
    user = FactoryGirl.create(:user)

    visit feelings_path

    # fill_in 'unhappiness', with: 5
    # click_button 'record it'

    expect(page).to have_content('Feelings Index')
  end
end
