require 'spec_helper'

feature "Enter Names" do
  scenario "Submits a name in a form" do
    visit('/')
    fill_in :name_1, with: "Emma"
    fill_in :name_2, with: "Florence"
    click_button "Submit"
    expect(page).to have_content("Emma vs. Florence")
  end
end
