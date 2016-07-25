require 'rails_helper'

RSpec.feature "User creates a login" do
  scenario "they see the login page" do

    visit new_user_path
    fill_in "Username", with: "Lane"
    fill_in "Password", with: "Password"
    click_button "Create Account"

    expect(page).to have_content ("Welcome, Lane")
  end
end
