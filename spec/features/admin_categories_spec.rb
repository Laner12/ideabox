require 'rails_helper'

RSpec.feature "Can login as admin or user" do
  scenario "logged in admin sees categories index" do
    admin = User.create(username: "Lanelane", password: "yep", role: 1)

    visit new_user_path

    visit login_path
    fill_in "Username", with: admin.username
    fill_in "Password", with: "yep"
    click_button "Login"
    visit admin_categories_path

    expect(page).to have_content ("Admin Homepage")
  end
end
