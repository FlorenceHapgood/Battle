require 'spec_helper'

feature "Enter Names" do
  scenario "Submits a name in a form" do
    sign_in_and_play
    expect(page).to have_content("Florence vs. Emma")
  end
end
