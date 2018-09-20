feature 'Attack_Player' do
  scenario "Attacks player_2 and gets confirmation" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content("Florence attacked Emma")
  end

end
