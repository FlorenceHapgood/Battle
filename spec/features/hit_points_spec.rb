feature 'View Hit Points' do
  scenario "see Player 2 hit points" do
    visit ('/')
    fill_in :name_1, with: "Florence"
    fill_in :name_2, with: "Emma"
    click_button "Submit"
    expect(page).to have_content "Emma: 60HP"
  end
end
