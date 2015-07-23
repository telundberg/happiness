require 'rails_helper'

feature 'user signs in', %{
  As a signed in user
  I want to see a list of feelings
  So I can feel unhappy
} do

  # let!(:user) { FactoryGirl.create :user }
  #
  # before do
  #   sign_in_as user
  #   visit new_level_path
  # end

  scenario 'user sees a list' do
    user = FactoryGirl.create(:user)

    visit feelings_path

    expect(page).to have_content("Unhappiness categories")
    expect(page).to have_content("Personal life")
    expect(page).to have_content("Social life")
    expect(page).to have_content("Physical life")
    expect(page).to have_content("Mental life")
    expect(page).to have_content("Family life")
    expect(page).to have_content("Financial life")
    expect(page).to have_content("Spiritual life")
  end
end
