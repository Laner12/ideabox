require 'rails_helper'

RSpec.feature "User can logout" do
  scenario "they can logout after their session" do
    user = User.create(username: "Lane", password: "password")

    visit login_path
    fill_in "Username", with: user.username
    fill_in "Password", with: "password"
    click_button "Login"

    expect(page).to have_content ("Welcome, Lane")

    click_link "Logout"

    expect(page).to_not have_content ("Welcome, Lane")
  end
end
