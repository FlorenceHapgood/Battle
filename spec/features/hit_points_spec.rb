feature 'View Hit Points' do
  scenario "see Player 2 hit points" do
    sign_in_and_play
    expect(page).to have_content "Emma: 60HP"
  end
end
