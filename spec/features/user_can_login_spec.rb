require 'rails_helper'

RSpec.feature "User can login" do
  scenario "they can login after creating account" do
    user = User.create(username: "Lane", password: "password")

    visit login_path
    fill_in "Username", with: user.username
    fill_in "Password", with: "password"
    click_button "Login"

    expect(page).to have_content ("Welcome, Lane")
  end
end
