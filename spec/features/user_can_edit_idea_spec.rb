require 'rails_helper'

RSpec.feature "User edits an idea" do
  scenario "they see the page for the individual idea and edit it" do
    idea_title = "Light Bulb"
    idea_content = "This is a brilliant idea"

    visit ideas_path
    click_on "New Idea"
    fill_in "idea_title", with: idea_title
    fill_in "idea_content", with: idea_content
    click_on "Create Idea"

    click_on "Edit Idea"
    fill_in "idea_title", with: idea_title
    fill_in "idea_content", with: "This is still a brilliant idea"
    click_on "Update Idea"

    expect(page).to have_content idea_title
    expect(page).to have_content "This is still a brilliant idea"
  end
end
